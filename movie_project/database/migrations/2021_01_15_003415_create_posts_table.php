<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string("name");
            $table->string("original_name");
            $table->longText("description");
            $table->string("photo");
            $table->string("director");
            $table->text("actors");
            $table->string("slug");
            $table->text("excerpt");
            $table->year("release_year");
            $table->text("trailer");
            $table->bigInteger("quality_id");
            $table->bigInteger("category_id");
            $table->bigInteger("user_id");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
}
