const content = """<!DOCTYPE html>
<html>
  <head>
    <title>Unpub</title>
    <meta charset="utf-8" />
    <base href="/" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
    />
    <!-- styles are taken from https://web.archive.org/web/20191012124525/https://pub.dev/ with images inlined -->
    <style>
      * {
        box-sizing: border-box;
      }
      body {
        background-color: #fff;
        line-height: 1.6;
        margin: 0;
        padding: 0;
        overflow-wrap: break-word;
      }
      body,
      input,
      button {
        font-family: "Roboto", sans-serif;
        -webkit-font-smoothing: antialiased;
      }
      img {
        max-width: 100%;
      }
      button {
        cursor: pointer;
        border: none;
      }
      button.mdc-button--unelevated {
        background-color: #fff !important;
      }
      button.mdc-button--unelevated:hover {
        background-color: #e6e6e6 !important;
      }
      button.mdc-button--unelevated.mdc-ripple-upgraded--foreground-activation {
        background-color: gray !important;
      }
      button.mdc-button--raised {
        background-color: #0175c2 !important;
      }
      button.mdc-button--raised:hover {
        background-color: #01568f !important;
      }
      button.mdc-button--raised.pub-button-danger {
        background-color: #ff4242 !important;
      }
      button.mdc-button--raised.pub-button-danger:hover {
        background-color: #ff0f0f !important;
      }
      button.mdc-button--raised.pub-button-cancel {
        background-color: #aaa !important;
      }
      button.mdc-button--raised.pub-button-cancel:hover {
        background-color: #919191 !important;
      }
      button.mdc-dialog__button:hover {
        background-color: #fff !important;
      }
      button.mdc-dialog__button.mdc-ripple-upgraded--background-focused {
        background-color: #c3e7ff !important;
      }
      button.mdc-dialog__button.mdc-ripple-upgraded--foreground-activation {
        background-color: #c3e7ff !important;
      }
      button.mdc-dialog__button .mdc-button__label {
        color: #0175c2;
      }
      .mdc-text-field--focused .mdc-notched-outline__leading,
      .mdc-text-field--focused .mdc-notched-outline__trailing {
        border-color: #0175c2 !important;
      }
      .mdc-text-field--focused .mdc-floating-label--float-above {
        color: #0175c2 !important;
      }
      .mdc-select--focused .mdc-floating-label--float-above {
        color: #0175c2 !important;
      }
      .mdc-select--focused .mdc-line-ripple--active {
        background-color: #0175c2 !important;
      }
      button.pub-button {
        font-size: 13px;
        margin: 20px 20px 20px 0px;
        padding: 12px 24px;
        font-weight: 500;
        color: #fff;
        background: #0175c2;
        border-radius: 2px;
        outline: none;
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5);
      }
      button.pub-button:hover {
        background-color: #01568f;
      }
      button.pub-button:disabled {
        background-color: #fff;
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1);
        color: #aaa;
        cursor: not-allowed;
      }
      button.pub-button.secondary {
        background-color: #c3e7ff;
        color: #000;
      }
      input.pub-input,
      textarea.pub-input {
        font-size: 13px;
        padding: 12px;
        margin: 0 -24px 0 0;
        width: 100%;
      }
      input.pub-input:disabled,
      textarea.pub-input:disabled {
        cursor: not-allowed;
      }
      a {
        text-decoration: none;
        color: #0175c2;
        cursor: pointer;
        font-weight: 500;
        opacity: 1;
      }
      a:hover {
        opacity: 0.8;
      }
      main {
        min-height: calc(100vh - 360px);
      }
      body.page-standalone main {
        max-width: 800px;
      }
      .container {
        max-width: 1000px;
        margin: 0 auto;
        padding: 0 20px;
      }
      code {
        background: #f8f8f8;
        border: 1px solid #eee;
        font-family: "Source Code Pro", Menlo, monospace;
        font-size: 85%;
        padding: 2px;
      }
      pre > code {
        display: block;
        overflow-x: auto;
        padding: 0.5em;
      }
      ._flex-space {
        -webkit-box-flex: 1;
        -ms-flex: 1;
        flex: 1;
      }
      .small-banner,
      .medium-banner {
        padding: 10px 0px;
      }
      ._banner-bg {
        background: #132030;
        /* background-image: url("/web/20191208142649im_/https://pub.dev/static/img/background-pattern-darkblue.jpg?hash=tqigd6sddnrgq97c7crv8d2l6agjtrob"); */
        background-size: cover;
        color: #8d9399;
      }
      ._banner-bg a {
        color: #38bffc;
      }
      ._visuallyhidden {
        border: 0;
        clip: rect(0 0 0 0);
        height: 1px;
        margin: -1px;
        overflow: hidden;
        padding: 0;
        position: absolute;
        width: 1px;
      }
      ._visuallyhidden:active,
      ._visuallyhidden:focus {
        clip: auto;
        height: auto;
        margin: 0;
        overflow: visible;
        position: static;
        width: auto;
      }
      .overflow-x {
        overflow-x: auto;
      }
      .-pub-publisher-shield {
        vertical-align: top;
        margin-right: 2px;
      }
      #-pub-like-icon-button {
        vertical-align: top;
        margin-left: 20px;
        margin-top: -15px;
      }
      .-pub-likes {
        display: inline-block;
        margin-right: 2px;
      }
      .-pub-like-button {
        float: right;
        width: 100px;
      }
      .-pub-like-button-text {
        color: #000;
      }
      .site-header-row {
        background: #1c2834;
        color: #f8f9fa;
      }
      .site-header {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
      }
      .site-header > .hamburger {
        display: none;
        background-color: transparent;
        width: 24px;
        height: 40px;
        background-position: center;
        margin-left: 10px;
        background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAQAAAD9CzEMAAAAAmJLR0QA/4ePzL8AAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfjBB0KByvlnQBfAAAANklEQVRYw+3TsQkAMAgAQZP9dzZVwAESRLjrbBSLjwDot+qQ+Whp2bp/fzD/AChZyaBkJQNcB6AzBhZq14GdAAAAAElFTkSuQmCC");
        background-size: 100%;
        background-repeat: no-repeat;
      }
      .nav-wrap {
        display: flex;
        justify-content: space-between;
        width: 100%;
        align-items: center;
        height: 50px;
      }
      .nav-wrap.-show {
        display: block;
      }
      .site-nav {
        display: -webkit-inline-box;
        display: -ms-inline-flexbox;
        display: inline-flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
      }
      .site-nav {
        margin: 0 10px;
        font-size: 14px;
        text-transform: capitalize;
        vertical-align: middle;
        padding: 12px 10px;
      }
      .nav-header {
        display: -webkit-inline-box;
        display: -ms-inline-flexbox;
        display: inline-flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        height: 40px;
      }
      .nav-header > .logo.-hidden {
        display: none;
      }
      .nav-header > .logo img {
        height: 27px;
        vertical-align: middle;
      }
      .nav-header > .close {
        display: none;
      }
      .sub-wrap {
        position: relative;
      }
      .sub-wrap > .button {
        padding: 8px 10px;
        margin-left: 10px;
        font-size: 14px;
        text-transform: capitalize;
        vertical-align: middle;
        font-weight: 500;
        color: inherit;
        background-color: transparent;
      }
      .sub-wrap > .button:after {
        content: "";
        background-image: url("data:image/svg+xml, %3Csvg xmlns='http://www.w3.org/2000/svg' width='24px' height='24px' viewBox='0 0 24 24' fill='%23757575'%3E %3Cpath d='M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z'/%3E %3Cpath d='M0-.75h24v24H0z' fill='none'/%3E %3C/svg%3E ");
        display: inline-block;
        width: 24px;
        height: 24px;
        vertical-align: middle;
      }
      .sub-wrap:hover .sub-nav,
      .sub-wrap.hover .sub-nav {
        display: block;
      }
      .sub-nav {
        display: none;
        position: absolute;
        text-align: left;
        background: #fff;
        border: 1px solid #ddd;
        min-width: 200px;
        padding: 8px 12px;
        border-radius: 3px;
        top: 40px;
        cursor: auto;
        cursor: initial;
        font-size: 14px;
        z-index: 2;
      }
      .sub-nav.sub-nav-right {
        text-align: right;
        right: 0px;
      }
      .sub-nav.sub-nav-right:before,
      .sub-nav.sub-nav-right:after {
        right: 4px;
      }
      .sub-nav:before {
        content: "";
        position: absolute;
        top: -10px;
        width: 2px;
        height: 0;
        border-width: 0 10px 10px;
        border-style: solid;
        border-color: transparent transparent #ddd;
      }
      .sub-nav:after {
        content: "";
        position: absolute;
        top: -8px;
        width: 2px;
        height: 0;
        border-width: 0 10px 10px;
        border-style: solid;
        border-color: transparent transparent #fff;
      }
      .sub-nav > .link,
      .sub-nav > .command {
        display: block;
      }
      .sub-nav > .link {
        color: #000;
        padding: 3px 0;
        font-weight: 400;
        text-transform: none;
      }
      .sub-nav > .link:hover {
        color: #0175c2;
      }
      .sub-nav > .command {
        display: inline-block;
        color: #000;
        text-transform: none;
        background: #f5f5f5;
        border: 1px solid #ddd;
        padding: 0 6px;
        margin: 3px 0;
        color: #de0e32;
      }
      .sub-nav > .title {
        color: #999;
        text-transform: uppercase;
        font-size: 12px;
        font-weight: 600;
        margin: 4px 0;
      }
      .command-list {
        margin: 0;
        padding: 0;
        list-style: none;
      }
      @media screen and (max-width: 640px) {
        .site-header > .mask {
          display: none;
          position: fixed;
          top: 0;
          bottom: 0;
          left: 0;
          right: 0;
          background: rgba(0, 0, 0, 0.5);
        }
        .site-header > .mask.-show {
          display: block;
        }
        .site-header > .hamburger {
          display: block;
        }
        .nav-wrap {
          display: block;
          width: inherit;
          position: fixed;
          top: 0;
          bottom: 0;
          left: 0;
          height: 100%;
          box-shadow: 0 0 10px rgba(0, 0, 0, 0.7);
          background: #f5f5f5;
          transition: -webkit-transform 0.3s ease;
          transition: transform 0.3s ease;
          transition: transform 0.3s ease, -webkit-transform 0.3s ease;
          -webkit-transform: translateX(-100%);
          transform: translateX(-100%);
          min-width: 270px;
          z-index: 1;
        }
        .nav-wrap.-show {
          -webkit-transform: translateX(0);
          transform: translateX(0);
        }
        .nav-wrap .site-nav {
          position: absolute;
          top: 66px;
          bottom: 0;
          left: 0;
          right: 0;
          padding-bottom: 50px;
          display: block;
          overflow: auto;
        }
        .nav-wrap .site-nav > .link {
          display: block;
          text-align: left;
        }
        .nav-wrap .site-nav > .link:after {
          content: ">";
          margin-left: 6px;
        }
        .nav-wrap .sub-wrap > .button {
          cursor: default;
          margin: 10px 10px 6px;
        }
        .nav-wrap .sub-wrap > .button:after {
          display: none;
        }
        .nav-wrap .sub-nav {
          position: static;
          display: block;
          background-color: transparent;
          border: none;
          padding: 0 36px;
        }
        .nav-wrap .sub-nav > .title {
          display: none;
        }
        .nav-wrap .sub-nav > .link {
          margin: 6px 0;
        }
        .nav-wrap .sub-nav:before,
        .nav-wrap .sub-nav:after {
          display: none;
        }
        .nav-header {
          display: -webkit-box;
          display: -ms-flexbox;
          display: flex;
          background: #1c2834;
          height: 56px;
        }
        .nav-header > .close {
          display: block;
          width: 24px;
          height: 24px;
          margin-right: 10px;
          float: right;
          background-color: transparent;
          background-size: 100%;
          background-repeat: no-repeat;
          background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAQAAAD9CzEMAAAAW0lEQVR4Ae2WVwGAMBDF2DrO5LmoDIQgBYywl4LOS95/8gNtKwAAb6io+NXPx8Snfjt2JLzpnzm/+lHbovXo0f+B6dMvOlRV6F+LBAkSzvudnOerwvO7CADAAztZR8ZxiHezAQAAAABJRU5ErkJggg==);
        }
        .nav-header > .logo {
          display: block !important;
        }
        .site-footer {
          padding: 0;
        }
        .site-footer > .link {
          display: block;
        }
        #account-nav {
          flex-grow: 1;
        }
      }
      .center {
        text-align: center;
      }
      .pub-modal {
        position: fixed;
        bottom: 0;
        left: 0;
        right: 0;
        top: 0;
        background: rgba(0, 0, 0, 0.7);
      }
      .pub-modal > .pub-modal-panel {
        background: #fff;
        border: 1px solid #666;
        border-radius: 24px;
        padding: 24px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        min-width: 300px;
        max-width: 600px;
      }
      .pub-modal > .pub-modal-panel > .pub-modal-content {
        margin-bottom: 24px;
      }
      .pub-modal > .pub-modal-panel > .pub-modal-buttons {
        text-align: center;
      }
      .pub-modal > .pub-modal-panel > .pub-modal-buttons .pub-button {
        margin-left: 20px;
        margin-right: 20px;
      }
      .spinner-frame {
        position: fixed;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        z-index: 10000;
        background: rgba(0, 0, 0, 0.2);
        display: flex;
        align-items: center;
        justify-content: center;
      }
      .spinner-frame .spinner {
        border: 8px solid #f3f3f3;
        border-top: 8px solid #0175c2;
        border-radius: 50%;
        width: 60px;
        height: 60px;
        animation: spin 3s linear infinite;
      }
      @keyframes spin {
        0% {
          transform: rotate(0deg);
        }
        100% {
          transform: rotate(360deg);
        }
      }
      .detail-container > .main {
        display: inline-block;
        width: calc(100% - 300px);
        vertical-align: top;
      }
      .detail-container > .detail-info-box {
        display: inline-block;
        vertical-align: top;
        margin-left: 20px;
        -webkit-box-flex: 0;
        -ms-flex: 0 0 270px;
        flex: 0 0 270px;
        width: 270px;
        padding: 10px 20px 22px 20px;
        background: #f8f8f8;
        border: 1px solid #ddd;
        position: relative;
        font-size: 14px;
      }
      .detail-container > .detail-info-box > .title {
        font-size: 14px;
        margin: 12px 0 0 0;
      }
      .detail-container > .detail-info-box > p {
        margin: 0;
      }
      .detail-container > .detail-info-box > .link {
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
        max-width: 100%;
        display: inline-block;
        line-height: 1.2em;
      }
      @media screen and (max-width: 920px) {
        .detail-container > .main {
          display: block;
          width: 100%;
          vertical-align: top;
        }
        .detail-container > .detail-info-box {
          display: block;
          width: 100%;
          margin: 60px 0 0;
        }
      }
      .detail-header {
        margin: 30px 0 10px;
      }
      .detail-header > .title {
        font-size: 32px;
        font-weight: 600;
        margin: 0;
      }
      .detail-header > .metadata {
        font-size: 14px;
        color: #555;
      }
      .detail-header > .metadata > .tags {
        display: inline-block;
        margin-left: 20px;
      }
      .detail-tabs-header {
        margin: 10px 0 20px;
        padding: 0;
        border-bottom: 1px solid #f0f0f0;
        list-style: none;
      }
      .detail-tabs-header > .tab-button,
      .detail-tabs-header > .tab-link {
        display: inline-block;
        margin-right: 35px;
        vertical-align: bottom;
        transition: opacity 200ms;
      }
      .detail-tabs-header > .tab-button:last-child,
      .detail-tabs-header > .tab-link:last-child {
        margin-right: 0;
      }
      .detail-tabs-header > .tab-button.-hidden,
      .detail-tabs-header > .tab-link.-hidden {
        visibility: hidden;
        opacity: 0;
      }
      .detail-tabs-header > .tab-button,
      .detail-tabs-header > .tab-link > a {
        color: #666;
        padding: 10px 2px;
        border-bottom: 4px solid;
        border-bottom-color: transparent;
        cursor: pointer;
      }
      .detail-tabs-header > .tab-button:hover,
      .detail-tabs-header > .tab-link > a:hover {
        border-bottom-color: #ddd;
      }
      .detail-tabs-header > .tab-button > .score-box,
      .detail-tabs-header > .tab-link > a > .score-box {
        float: none;
        margin: 0;
        position: inherit;
      }
      .detail-tabs-header > .tab-button.-active {
        color: #000;
        border-bottom-color: #000;
      }
      .detail-tabs-header > .tab-link > a {
        display: block;
        font-weight: 400;
      }
      .detail-tabs-header > .tab-button[data-name="-admin-tab-"],
      .detail-tabs-header > .tab-link[data-name="-admin-tab-"] > a {
        color: #900;
      }
      .detail-tabs-header > .tab-button[data-name="-admin-tab-"]:hover,
      .detail-tabs-header > .tab-link[data-name="-admin-tab-"] > a:hover {
        border-bottom-color: #900;
      }
      .detail-tabs-header > .tab-button.-active[data-name="-admin-tab-"] {
        border-bottom-color: #900;
      }
      .detail-tabs-content > .tab-content {
        display: none;
      }
      .detail-tabs-content > .tab-content.-active {
        display: block;
      }
      .site-footer {
        padding: 16px 16px 30px;
        margin: 80px 0 0;
        text-align: center;
        font-size: 14px;
        background: #1c2834;
        color: #f8f9fa;
      }
      .site-footer a {
        color: #f8f9fa;
      }
      .site-footer > .link {
        margin: 0 12px;
        font-weight: 400;
      }
      .site-footer > .link > .inline-icon {
        display: inline-block;
        max-height: 16px;
        position: relative;
        top: 3px;
      }
      #account-nav {
        color: #000;
        min-width: 140px;
        text-align: right;
        margin: 0px -8px;
      }
      #account-nav > a.link {
        color: #fff;
        font-size: 14px;
      }
      #account-nav > .sub-wrap {
        display: inline-block;
      }
      #account-nav .profile-img {
        border-radius: 50%;
        width: auto;
        max-height: 30px;
      }
      #account-nav .account-nav-info,
      #account-nav .account-nav-link > a {
        display: block;
        padding: 3px 8px;
        white-space: nowrap;
      }
      #account-nav .account-nav-info {
        color: #666;
      }
      #account-nav .account-nav-link:hover {
        background: #f8f8f8;
      }
      #account-nav .account-nav-divider {
        border-bottom: 1px solid #eee;
        margin: 4px 0px;
      }
      .-pub-form-row {
        margin: 20px 0px;
      }
      .-pub-form-row input[type="text"] {
        min-width: 40ex;
      }
      .mdc-data-table__table {
        margin-bottom: 0px !important;
      }
      #-admin-create-publisher,
      #-admin-invite-member-button {
        margin-left: 20px;
      }
      #-admin-set-publisher-button {
        margin-top: 20px;
      }
      #-admin-set-publisher-input {
        min-width: 200px;
      }
      .package-list,
      .publisher-list {
        clear: both;
        padding: 0;
        margin: 0;
        list-style: none;
      }
      .publisher-list {
        display: flex;
        flex-wrap: wrap;
      }
      .publisher-list > li {
        flex: 1 1 26%;
      }
      .list-item {
        padding: 7px 8px;
      }
      .list-item:hover {
        background: #fafafa;
      }
      .list-item.-full {
        min-height: 7em;
      }
      .list-item.-compact {
        min-height: 4em;
      }
      .list-item > .title {
        font-weight: 600;
        font-size: 16px;
        margin: 0;
      }
      .list-item > .description {
        font-size: 14px;
        line-height: 1.3;
        color: rgba(0, 0, 0, 0.87);
        margin: 0;
      }
      .list-item > .metadata {
        font-size: 12px;
        margin: 4px 0;
      }
      .list-item.-simple > .metadata > .package-tag:first-of-type {
        margin-left: 0;
      }
      .-pub-mini-list-publisher-badge {
        font-size: 12px;
        float: right;
        display: block;
        margin: 4px 0px 4px 4px;
        max-width: 32ex;
      }
      .-pub-mini-list-publisher-badge > img {
        vertical-align: top;
      }
      .list-item > .api_pages {
        font-size: 12px;
      }
      .score-box {
        float: right;
        margin: 8px;
        position: relative;
        text-align: center;
        width: 36px;
      }
      .score-box > .number {
        display: block;
        border-radius: 50%;
        width: 30px;
        height: 30px;
        line-height: 30px;
        text-align: center;
        font-size: 12px;
        color: #fff;
        margin: 0 auto;
        font-weight: 700;
      }
      .score-box > .number.-solid {
        background: #0175c2;
      }
      .score-box > .number.-good {
        background: #00c4b3;
      }
      .score-box > .number.-rotten {
        background: #bb2400;
      }
      .score-box > .number.-missing {
        background: #ccc;
      }
      .score-box > .new {
        position: absolute;
        top: -30%;
        right: -25%;
        background: #646464;
        border-radius: 3px;
        color: #ffeb3b;
        font-size: 10px;
        font-weight: bold;
        padding: 0px 2px;
        transition: background 0.2s ease-out;
      }
      .score-box > .new:hover {
        background: #424242;
      }
      .package-tag {
        background: #eef9fe;
        text-transform: uppercase;
        display: inline-block;
        font-size: 12px;
        font-weight: 500;
        color: #555;
        padding: 2px 8px;
        margin: 0px 0 4px 4px;
      }
      .package-tag.missing {
        background: #f0f0f0;
      }
      .package-tag.unidentified {
        background: #fff0f0;
      }
      .package-tag.legacy,
      .package-tag.discontinued {
        background: #c0392b;
        color: #f8f8f8;
      }
      .list-header {
        padding: 20px 30px;
      }
      .promo-box {
        -webkit-box-align: start;
        -ms-flex-align: start;
        align-items: flex-start;
        margin: 32px 0;
        max-width: 600px;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
      }
      .promo-box > .logo {
        width: 40px;
        margin-right: 30px;
        margin-top: 6px;
      }
      .promo-box > p {
        margin: 0;
      }
      .promo-box .get-started {
        display: inline-block;
        margin-top: 16px;
      }
      .promo-box .get-started:after {
        content: " >";
      }
      .list-filters {
        display: -webkit-inline-box;
        display: -ms-inline-flexbox;
        display: inline-flex;
        flex-flow: row wrap;
        margin: 16px 0;
        border: 1px solid #1e2a38;
        border-radius: 3px;
      }
      .list-filters > .filter {
        background: transparent;
        border-right: 1px solid #1e2a38;
        color: #fff;
        text-transform: uppercase;
        font-size: 14px;
        font-weight: 500;
        padding: 4px 24px;
        cursor: pointer;
      }
      .list-filters > .filter:hover {
        background: rgba(255, 255, 255, 0.1);
      }
      .list-filters > .filter.-active {
        color: #fff;
        background: #38bffc;
      }
      .package-count {
        font-size: 16px;
        color: #333;
        margin: 24px 6px 10px;
      }
      .pagination {
        margin: 20px auto;
        padding: 0;
        list-style: none;
        text-align: center;
      }
      .pagination > li {
        display: inline-block;
        text-transform: uppercase;
        color: #0175c2;
        background: #f3f3f3;
        font-size: 14px;
        border-radius: 3px;
        margin-top: 40px;
      }
      .pagination > li.-disabled {
        pointer-events: none;
        color: #aaa;
      }
      .pagination > li.-active {
        pointer-events: none;
        color: #fff;
        background: #0175c2;
      }
      .pagination > li > a {
        display: inline-block;
        padding: 10px 16px;
        color: inherit;
        font-weight: 600;
      }
      .email-icon,
      .search-icon {
        display: inline-block;
        width: 16px;
        height: 16px;
        background-repeat: no-repeat;
        background-position: 50% 50%;
        vertical-align: text-bottom;
      }
      .email-icon {
        background-image: url("data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjMDAwMDAwIiBoZWlnaHQ9IjE4IiB2aWV3Qm94PSIwIDAgMjQgMjQiIHdpZHRoPSIxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yMCA0SDRjLTEuMSAwLTEuOTkuOS0xLjk5IDJMMiAxOGMwIDEuMS45IDIgMiAyaDE2YzEuMSAwIDItLjkgMi0yVjZjMC0xLjEtLjktMi0yLTJ6bTAgNGwtOCA1LTgtNVY2bDggNSA4LTV2MnoiLz4KICAgIDxwYXRoIGQ9Ik0wIDBoMjR2MjRIMHoiIGZpbGw9Im5vbmUiLz4KPC9zdmc+");
      }
      .search-icon {
        background-image: url("data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjMDAwMDAwIiBoZWlnaHQ9IjE4IiB2aWV3Qm94PSIwIDAgMjQgMjQiIHdpZHRoPSIxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xNS41IDE0aC0uNzlsLS4yOC0uMjdDMTUuNDEgMTIuNTkgMTYgMTEuMTEgMTYgOS41IDE2IDUuOTEgMTMuMDkgMyA5LjUgM1MzIDUuOTEgMyA5LjUgNS45MSAxNiA5LjUgMTZjMS42MSAwIDMuMDktLjU5IDQuMjMtMS41N2wuMjcuMjh2Ljc5bDUgNC45OUwyMC40OSAxOWwtNC45OS01em0tNiAwQzcuMDEgMTQgNSAxMS45OSA1IDkuNVM3LjAxIDUgOS41IDUgMTQgNy4wMSAxNCA5LjUgMTEuOTkgMTQgOS41IDE0eiIvPgogICAgPHBhdGggZD0iTTAgMGgyNHYyNEgweiIgZmlsbD0ibm9uZSIvPgo8L3N2Zz4=");
      }
      .landing-page-title,
      .listing-page-title {
        color: gray;
        font-weight: 500;
      }
      .landing-page-title {
        margin-bottom: 0px;
      }
      .landing-page-title-block {
        text-align: center;
        margin-bottom: 1em;
      }
      .listing-sort-header {
        float: right;
        margin: 0 0.5em 0.5em 0.5em;
        text-align: right;
      }
      .home-banner {
        text-align: center;
        padding: 40px 20px 10px 20px;
      }
      .home-banner > .logo {
        width: 520px;
        height: 72px;
        margin-bottom: 30px;
      }
      @media (max-width: 520px) {
        .home-banner > .logo {
          width: 455px;
          height: 63px;
        }
      }
      @media (max-width: 460px) {
        .home-banner > .logo {
          width: 390px;
          height: 54px;
        }
      }
      @media (max-width: 400px) {
        .home-banner > .logo {
          width: 325px;
          height: 45px;
        }
      }
      @media screen and (max-width: 600px) {
        .home-banner > .logo {
          display: block;
          margin: 4px;
        }
      }
      .home-banner > .text {
        margin: 1em auto;
        max-width: 500px;
      }
      .home-banner > .link {
        text-transform: uppercase;
        display: inline-block;
        margin: 0 16px;
        font-weight: 500;
        font-size: 14px;
      }
      .home-banner > .link:after {
        content: " >";
      }
      .home-banner > .search-bar {
        margin: 0 auto;
      }
      .home-lists-container {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        flex-direction: column;
        max-width: 1100px;
      }
      .home-lists-container .more {
        text-align: center;
        margin-top: 10px;
      }
      .home-lists-container .more > a {
        margin: 0 1em;
      }
      .home-lists-container .package-list {
        display: flex;
        flex-flow: row wrap;
        justify-content: space-around;
      }
      .home-lists-container .package-list .list-item {
        width: 305px;
        margin: 0 5px 10px 5px;
        border: none;
      }
      .home-lists-container .package-list:last-child {
        border-bottom: inherit;
      }
      .version-table {
        width: 100%;
      }
      .version-table td,
      .version-table th {
        width: 25%;
        padding: 4px 10px;
        text-align: left;
      }
      .dependency-table {
        width: 100%;
      }
      .dependency-table td,
      .dependency-table th {
        width: 25%;
        padding: 4px 10px;
        text-align: left;
      }
      .dependency-table th.sub-header {
        font-weight: 500;
        font-style: italic;
      }
      .score-percent-row {
        margin: 0px 24px;
        height: 28px;
        position: relative;
      }
      .score-percent {
        background: #ddd;
        color: #000;
        display: inline-block;
        padding: 2px 4px;
        margin-left: -12px;
        position: absolute;
        top: -4px;
        font-size: 10pt;
        min-width: 24px;
        text-align: center;
      }
      .score-percent::after {
        content: " ";
        position: absolute;
        top: 100%;
        left: 12px;
        margin-left: -5px;
        border-width: 5px;
        border-style: solid;
        border-color: #ddd transparent transparent transparent;
      }
      .score-progress-row {
        padding: 3px 0px;
        margin: 0px 24px;
      }
      .score-progress-frame {
        background: #f0f0f0;
      }
      .score-progress-frame > .score-progress {
        height: 4px;
      }
      #scores-table {
        margin-bottom: 1em;
      }
      #scores-table tr {
        vertical-align: baseline;
      }
      #scores-table .score-name {
        min-width: 100px;
        padding-right: 4px;
        text-align: right;
      }
      #scores-table .score-value {
        width: 100%;
      }
      .tooltip-base {
        position: relative;
        display: inline-block;
        padding: 4px;
      }
      .tooltip-dotted {
        border-bottom: 1px dotted #ddd;
      }
      .tooltip-content {
        visibility: hidden;
        background: #f8f8f8;
        color: #000;
        opacity: 0.95;
        padding: 12px 12px;
        border: 1px solid #ddd;
        border-radius: 2px;
        text-align: left;
        position: absolute;
        width: 300px;
        top: 100%;
        left: -24px;
        z-index: 3;
      }
      .tooltip-content::after {
        content: " ";
        position: absolute;
        bottom: 100%;
        left: 48px;
        margin-left: -5px;
        border-width: 5px;
        border-style: solid;
        border-color: transparent transparent #ddd transparent;
      }
      .tooltip-bottom-left {
        left: inherit;
        right: -24px;
      }
      .tooltip-bottom-left.tooltip-content::after {
        left: inherit;
        right: 48px;
      }
      .tooltip-base:hover .tooltip-content,
      .tooltip-base.hover .tooltip-content {
        visibility: visible;
      }
      .suggestion-row {
        padding: 2px;
      }
      .suggestion-row:hover {
        background-color: #f8f8f8;
      }
      .suggestion-title {
        font-weight: bold;
      }
      .suggestion-icon-info,
      .suggestion-icon-warning,
      .suggestion-icon-danger {
        float: left;
        margin: 2px 20px 0px 0px;
      }
      .suggestion-icon-info {
        display: inline-block;
        width: 0px;
        height: 0px;
        border: 10px solid #add8e6;
        border-radius: 10px;
      }
      .suggestion-icon-warning {
        display: inline-block;
        width: 0px;
        height: 0px;
        border-left: 10px solid transparent;
        border-right: 10px solid transparent;
        border-bottom: 20px solid orange;
      }
      .suggestion-icon-danger {
        display: inline-block;
        width: 20px;
        height: 20px;
        background: red;
      }
      .suggestion-description {
        margin-left: 40px;
      }
      .search-bar {
        border: 1px solid #1e2a38;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        border-radius: 3px;
        max-width: 650px;
        background: transparent;
      }
      .search-bar > .input {
        font-size: 16px;
        padding: 0.8em 1em;
        border: none;
        width: 150px;
        -webkit-box-flex: 1;
        -ms-flex-positive: 1;
        flex-grow: 1;
        background: #35404d;
        color: #fff;
      }
      .search-bar > .input::placeholder {
        color: #888;
      }
      .search-bar > .icon {
        width: 45px;
        height: 45px;
        border-top-right-radius: 3px;
        border-bottom-right-radius: 3px;
        background-color: #38bffc;
        background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAABGdBTUEAALGPC/xhBQAAARdJREFUOBHNkz1uwkAQhTGkhCuELlQUiAtwilzHtU8BVLkHF4iokbJJkS41EiTS5nvL2FrQGMsdIz3N7ntvZn+8HgyyiDEuwBv4BifLmi8yW/sQ4xMowRl4Ib4Eo/YuKGYixT9QgSUYW9ZcvKJsbYSo42hFmVeeUbzp8vnHRNAdKCqvSc1JTy78NXeVEXWxiuWVcDORnlz4b6TLFFFfRzF2DUaiT5IrxqPnG0L+mDDzDBn3YuNDxjVDNdrZ7LVh/UGtv7sy2+3z1X7xz91GIhFLoOh6R+vWJtao62VrgW1aKsZP8rSrYf6vHSnYgw1IxyEHoAjgfrN7K6kYBKAI4DGbfbCzZ72j3lEUxRdFKxB6F3sF2okg7R/6f6gee6OuegAAAABJRU5ErkJggg==");
        background-repeat: no-repeat;
        background-position: 50% 50%;
        -webkit-transform: scale(1.02);
        transform: scale(1.02);
      }
      .search-bar-details {
        position: relative;
        max-width: 650px;
      }
      .search-bar-options {
        font-size: 14px;
      }
      @media (min-width: 600px) {
        .search-bar-options {
          position: absolute;
          top: 16px;
          right: 0px;
        }
      }
      .markdown-body .hash-link {
        color: #ccc;
        opacity: 0;
        transition: opacity 0.5s ease-in-out 0.1s;
      }
      .markdown-body .hash-header:hover .hash-link {
        opacity: 1;
      }
    </style>
    <style>
      .markdown-body {
        font-size: 16px;
        line-height: 1.5;
        word-wrap: break-word;
      }

      .markdown-body::before {
        display: table;
        content: "";
      }

      .markdown-body::after {
        display: table;
        clear: both;
        content: "";
      }

      .markdown-body > *:first-child {
        margin-top: 0 !important;
      }

      .markdown-body > *:last-child {
        margin-bottom: 0 !important;
      }

      .markdown-body a:not([href]) {
        color: inherit;
        text-decoration: none;
      }

      .markdown-body .absent {
        color: #cb2431;
      }

      .markdown-body .anchor {
        float: left;
        padding-right: 4px;
        margin-left: -20px;
        line-height: 1;
      }

      .markdown-body .anchor:focus {
        outline: none;
      }

      .markdown-body p,
      .markdown-body blockquote,
      .markdown-body ul,
      .markdown-body ol,
      .markdown-body dl,
      .markdown-body table,
      .markdown-body pre {
        margin-top: 0;
        margin-bottom: 16px;
      }

      .markdown-body hr {
        height: 0.25em;
        padding: 0;
        margin: 24px 0;
        background-color: #e1e4e8;
        border: 0;
      }

      .markdown-body blockquote {
        padding: 0 1em;
        color: #6a737d;
        border-left: 0.25em solid #dfe2e5;
      }

      .markdown-body blockquote > :first-child {
        margin-top: 0;
      }

      .markdown-body blockquote > :last-child {
        margin-bottom: 0;
      }

      .markdown-body kbd {
        display: inline-block;
        padding: 3px 5px;
        font-size: 11px;
        line-height: 10px;
        color: #444d56;
        vertical-align: middle;
        background-color: #fafbfc;
        border: solid 1px #c6cbd1;
        border-bottom-color: #959da5;
        border-radius: 3px;
        box-shadow: inset 0 -1px 0 #959da5;
      }

      .markdown-body h1,
      .markdown-body h2,
      .markdown-body h3,
      .markdown-body h4,
      .markdown-body h5,
      .markdown-body h6 {
        margin-top: 24px;
        margin-bottom: 16px;
        font-weight: 600;
        line-height: 1.25;
      }

      .markdown-body h1 tt,
      .markdown-body h1 code,
      .markdown-body h2 tt,
      .markdown-body h2 code,
      .markdown-body h3 tt,
      .markdown-body h3 code,
      .markdown-body h4 tt,
      .markdown-body h4 code,
      .markdown-body h5 tt,
      .markdown-body h5 code,
      .markdown-body h6 tt,
      .markdown-body h6 code {
        font-size: inherit;
      }

      .markdown-body h1 {
        padding-bottom: 0.3em;
        font-size: 2em;
        border-bottom: 1px solid #eaecef;
      }

      .markdown-body h2 {
        padding-bottom: 0.3em;
        font-size: 1.5em;
        border-bottom: 1px solid #eaecef;
      }

      .markdown-body h3 {
        font-size: 1.25em;
      }

      .markdown-body h4 {
        font-size: 1em;
      }

      .markdown-body h5 {
        font-size: 0.875em;
      }

      .markdown-body h6 {
        font-size: 0.85em;
        color: #6a737d;
      }

      .markdown-body ul,
      .markdown-body ol {
        padding-left: 2em;
      }

      .markdown-body ul.no-list,
      .markdown-body ol.no-list {
        padding: 0;
        list-style-type: none;
      }

      .markdown-body ul ul,
      .markdown-body ul ol,
      .markdown-body ol ol,
      .markdown-body ol ul {
        margin-top: 0;
        margin-bottom: 0;
      }

      .markdown-body li {
        word-wrap: break-all;
      }

      .markdown-body li > p {
        margin-top: 16px;
      }

      .markdown-body li + li {
        margin-top: 0.25em;
      }

      .markdown-body dl {
        padding: 0;
      }

      .markdown-body dl dt {
        padding: 0;
        margin-top: 16px;
        font-size: 1em;
        font-style: italic;
        font-weight: 600;
      }

      .markdown-body dl dd {
        padding: 0 16px;
        margin-bottom: 16px;
      }

      .markdown-body table {
        border-spacing: 0;
        border-collapse: collapse;
        display: block;
        width: 100%;
        overflow: auto;
      }

      .markdown-body table th {
        font-weight: 600;
      }

      .markdown-body table th,
      .markdown-body table td {
        padding: 6px 13px;
        border: 1px solid #dfe2e5;
      }

      .markdown-body table tr {
        background-color: #fff;
        border-top: 1px solid #c6cbd1;
      }

      .markdown-body table tr:nth-child(2n) {
        background-color: #f6f8fa;
      }

      .markdown-body table img {
        background-color: transparent;
      }

      .markdown-body img {
        max-width: 100%;
        box-sizing: content-box;
        background-color: #fff;
      }

      .markdown-body img[align="right"] {
        padding-left: 20px;
      }

      .markdown-body img[align="left"] {
        padding-right: 20px;
      }

      .markdown-body .emoji {
        max-width: none;
        vertical-align: text-top;
        background-color: transparent;
      }

      .markdown-body span.frame {
        display: block;
        overflow: hidden;
      }

      .markdown-body span.frame > span {
        display: block;
        float: left;
        width: auto;
        padding: 7px;
        margin: 13px 0 0;
        overflow: hidden;
        border: 1px solid #dfe2e5;
      }

      .markdown-body span.frame span img {
        display: block;
        float: left;
      }

      .markdown-body span.frame span span {
        display: block;
        padding: 5px 0 0;
        clear: both;
        color: #24292e;
      }

      .markdown-body span.align-center {
        display: block;
        overflow: hidden;
        clear: both;
      }

      .markdown-body span.align-center > span {
        display: block;
        margin: 13px auto 0;
        overflow: hidden;
        text-align: center;
      }

      .markdown-body span.align-center span img {
        margin: 0 auto;
        text-align: center;
      }

      .markdown-body span.align-right {
        display: block;
        overflow: hidden;
        clear: both;
      }

      .markdown-body span.align-right > span {
        display: block;
        margin: 13px 0 0;
        overflow: hidden;
        text-align: right;
      }

      .markdown-body span.align-right span img {
        margin: 0;
        text-align: right;
      }

      .markdown-body span.float-left {
        display: block;
        float: left;
        margin-right: 13px;
        overflow: hidden;
      }

      .markdown-body span.float-left span {
        margin: 13px 0 0;
      }

      .markdown-body span.float-right {
        display: block;
        float: right;
        margin-left: 13px;
        overflow: hidden;
      }

      .markdown-body span.float-right > span {
        display: block;
        margin: 13px auto 0;
        overflow: hidden;
        text-align: right;
      }

      .markdown-body code,
      .markdown-body tt {
        padding: 0.2em 0.4em;
        margin: 0;
        font-size: 85%;
        background-color: rgba(27, 31, 35, 0.05);
        border-radius: 3px;
      }

      .markdown-body code br,
      .markdown-body tt br {
        display: none;
      }

      .markdown-body del code {
        text-decoration: inherit;
      }

      .markdown-body pre {
        word-wrap: normal;
      }

      .markdown-body pre > code {
        padding: 0;
        margin: 0;
        font-size: 100%;
        word-break: normal;
        white-space: pre;
        background: transparent;
        border: 0;
      }

      .markdown-body .highlight {
        margin-bottom: 16px;
      }

      .markdown-body .highlight pre {
        margin-bottom: 0;
        word-break: normal;
      }

      .markdown-body .highlight pre,
      .markdown-body pre {
        padding: 16px;
        overflow: auto;
        font-size: 85%;
        line-height: 1.45;
        background-color: #f6f8fa;
        border-radius: 3px;
      }

      .markdown-body pre code,
      .markdown-body pre tt {
        display: inline;
        max-width: auto;
        padding: 0;
        margin: 0;
        overflow: visible;
        line-height: inherit;
        word-wrap: normal;
        background-color: transparent;
        border: 0;
      }
    </style>
    <link rel="icon" type="image/png" href="https://pub.dev/favicon.ico" />
    <script defer src="main.dart.js"></script>
  </head>
  <body>
    <my-app>Loading...</my-app>
  </body>
</html>
""";
