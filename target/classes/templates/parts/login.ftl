<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group">
            <label> User Name : </label>
            <input type="text" name="username" class="form-control col-sm-5" placeholder="Username"/>
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" class="form-control col-sm-5" placeholder="Password"/>
        </div>
        <#if !isRegisterForm>
            <a href="/registration">Add new user</a>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Create<#else>Sign in</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input type="submit" class="btn btn-primary" value="Sign Out"/>
    </form>
</#macro>