<#import "parts/common.ftl" as c>

<@c.page>
    <h5>${username}</h5>
    ${message?ifExists}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Новый пароль:</label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Ваш новый пароль"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Новая электроная почта:</label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control" placeholder="Новая электроная почта"
                       value="${email!''}"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-dark" type="submit">Сохранить</button>
    </form>
</@c.page>
