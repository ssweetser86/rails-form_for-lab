class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(valid_params('school_class', :title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class = SchoolClass.create(valid_params('school_class', :title, :room_number))
        redirect_to school_class_path(@school_class)
    end
end
