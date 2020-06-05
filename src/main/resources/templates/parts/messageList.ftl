<#include "security.ftl">
<#import "pager.ftl" as p>

<@p.pager page url />

<div class="card-columns" id="message-list">
    <#list page.content as message>
        <div class="card my-3" data-id="${message.id}">
            <div class="m-2">
                <span>Название: <#if message.filename??>${message.filename}</#if></span><br/>
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted container">
                <div class="row">
                    <a class="col align-self-center"
                       href="/user-messages/${message.author.id}">${message.authorName}</a>
                    <a class="col align-self-center" href="/messages/${message.id}/like">
                        <#if message.meLiked>
                            <i class="fas fa-heart"></i>
                        <#else>
                            <i class="far fa-heart"></i>
                        </#if>
                        ${message.likes}
                    </a>
                    <#if message.author.id == currentUserId>
                        <a class="col btn btn-dark" href="/user-messages/${message.author.id}?message=${message.id}">
                            Изменить
                        </a>
                    </#if>
                </div>
            </div>
        </div>
    <#else>
        Нет сообщении
    </#list>
</div>

<@p.pager page url />
