import $ from 'jquery';
import Dropzone from 'dropzone';
import Sortable from 'sortablejs';
Dropzone.autoDiscover = false;

$(document).ready(function() {
    var referenceShow = new ReferenceShow($('.js-reference-show'));

    var $locationSelect = $('.js-article-form-location');
    var $specificLocationTarget = $('.js-specific-location-target');

    $locationSelect.on('change', function(e) {
        $.ajax({
            url: $locationSelect.data('specific-location-url'),
            data: {
                location: $locationSelect.val()
            },
            success: function (html) {
                if (!html) {
                    $specificLocationTarget.find('select').remove();
                    $specificLocationTarget.addClass('d-none');

                    return;
                }

                // Replace the current field and show
                $specificLocationTarget
                    .html(html)
                    .removeClass('d-none')
            }
        });
    });
});

class ReferenceShow
{
    constructor($element) {
        this.$element = $element;
        this.sortable = Sortable.create(this.$element[0],{
            handle: '.drag-handle',
            animation: 150,
            onEnd: () => {
                $.ajax({
                    url: this.$element.data('url')+'/reorder',
                    method: 'POST',
                    data: JSON.stringify(this.sortable.toArray())
                });
            }
        });
        this.references = [];
        this.render();

        this.$element.on('click', '.js-reference-delete', (event) => {
            this.handleReferenceDelete(event);
        });

        this.$element.on('blur', '.js-edit-filename', (event) => {
            this.handleReferenceEditFilename(event);
        });

        $.ajax({
            url: this.$element.data('url')
        }).then(data => {
            this.references = data;
            this.render();
        })
    }

    addReference(reference) {
        this.references.push(reference);
        this.render();
    }

    handleReferenceDelete(event) {
        const $li = $(event.currentTarget).closest('.list-group-item');
        const id = $li.data('id');
        $li.addClass('disabled');
        $.ajax({
            url: '/admin/calendar/days_pdf/'+id,
            method: 'DELETE'
        }).then(() => {
            this.references = this.references.filter(reference => {
                return reference.id !== id;
            });
            this.render();
        });
    }

    handleReferenceEditFilename(event) {
        const $li = $(event.currentTarget).closest('.list-group-item');
        const id = $li.data('id');
        const reference = this.references.find(reference => {
            return reference.id === id;
        });
        reference.originalFilename = $(event.currentTarget).val();
        $.ajax({
            url: '/admin/calendar/days_pdf'+id,
            method: 'PUT',
            data: JSON.stringify(reference)
        });
    }

    render() {
        const itemsHtml = this.references.map(reference => {
            return `
<li class="list-group-item d-flex justify-content-between align-items-center" data-id="${reference.id}">
    <label style="font-size: 14px;"> ${reference.originalFilename}</label>
    <span>
        <a href="/admin/calendar/days_pdf/${reference.id}/download" target="_blank" class="btn btn-link btn-sm"><span class="fa fa-download" style="vertical-align: top;"></span></a>
    </span>
</li>
`
        });
        this.$element.html(itemsHtml.join(''));
    }
}
