@extends('layouts.appel')
@section('content')

    <input type="hidden" id="id_sub" name="id_sub" value="{{ $id_sub }}">
    <div class="container flex-grow-1 flex-shrink-0 py-5">
        <div class="form-group">
            <a href="{{url('viewtest/'.$id_sub)}}"  class="btn btn-info">ดูคะแนนสอบ</a>
        </div>
        <div class="mb-5 p-4 bg-white shadow-sm">
            <h3>วิชา {{ $expre_detail->name_sub }}</h3>
            <div id="stepper1" class="bs-stepper">
                <div class="bs-stepper-header" role="tablist">
                    <div class="step" data-target="#test-l-1">
                        <button type="button" class="step-trigger" role="tab" id="stepper1trigger1"
                            aria-controls="test-l-1">
                            {{-- <span class="bs-stepper-circle">1</span>
                            <span class="bs-stepper-label">Email</span> --}}
                        </button>
                    </div>
                    @foreach ($subject_examination as $item)
                        <div class="step" data-target="#test-l-{{ $item->id_sexa }}">
                            <button type="button" class="step-trigger" role="tab" id="stepper1trigger2"
                                aria-controls="test-l-2">
                                {{-- <span class="bs-stepper-circle">2</span>
                                <span class="bs-stepper-label">Password</span> --}}
                            </button>
                        </div>
                    @endforeach
                    <div class="step" data-target="#testpost">
                        <button type="button" class="step-trigger" role="tab" id="stepper1trigger1"
                            aria-controls="test-l-1">
                            {{-- <span class="bs-stepper-circle">1</span>
                            <span class="bs-stepper-label">Email</span> --}}
                        </button>
                    </div>


                </div>
                <div class="bs-stepper-content">


                    <div id="test-l-1" role="tabpanel" class="bs-stepper-pane" aria-labelledby="stepper1trigger1">
                        <div class="form-group">
                            <h3>สอบก่อนเรียน</h3>
                        </div>
                        <form id="form-pre">

                            <?php
                            $output = '';
                            $i = 0;
                            $j = 0;
                            $x = 1;
                            foreach ($expre as $a) {
                            $output_criterion = '';
                            $criterions_arr = $a->select;

                            foreach ($criterions_arr as $c) {
                            $output_criterion .=
                            '
                            <div class="form-check">
                                <input class="form-check-input position-static" type="radio" name="blankRadio' .
                                                $j .
                                                '" id="blankRadio' .
                                                $x .
                                                '" value="' .
                                                $c->id .
                                                '" aria-label="..." required>
                                <label for="blankRadio' .
                                                $x .
                                                '">' .
                                    $c->a .
                                    '</label>
                            </div>';

                            $i++;
                            if ($i == 4) {
                            $j++;
                            $i = 0;
                            }
                            $x++;
                            }

                            $output .= '<div class="form-group"><label for="">' . $a->section . '</label> </div>' . '<div
                                class="form-group">' . $output_criterion . '<input type="hidden" name="check[]"
                                    value="' . Crypt::encryptString($a->answer) . '"></div>';
                            }
                            echo $output;
                            ?>


                            <input type="submit" class="btn btn-success" value="ส่งคำตอบ"> <br><br>




                        </form>

                        <center>
                            <button class="btn btn-primary testpre" onclick="stepper1.next()">ถัดไป</button>
                        </center>

                    </div>
                    @foreach ($subject_examination as $item)
                   
                            <div id="test-l-{{ $item->id_sexa }}" role="tabpanel" class="bs-stepper-pane "
                                aria-labelledby="stepper1trigger3">



                                <?php echo htmlspecialchars_decode($item->detail_sub); ?>

                                <center>
                                    <a href="javascript:void(0)" class="btn btn-success  showetest"
                                        data-id="{{ $item->id_sexa }}">คลิกทำข้อสอบ</a>
                                </center>


                                <br><br>
                                <button class="btn btn-primary" onclick="stepper1.previous()">ย้อนกลับ</button>
                                <button class="btn btn-primary" onclick="stepper1.next()">ถัดไป</button>
                            </div>
                        
                    @endforeach
                    <div id="testpost" role="tabpanel" class="bs-stepper-pane" aria-labelledby="stepper1trigger1">
                        <div class="form-group">
                            <h3>สอบหลังเรียน</h3>
                        </div>
                        <form id="form-posttest">

                            <?php
                            $output = '';
                            $i = 0;
                            $j = 0;
                            $x = 1;
                            foreach ($expost as $a) {
                            $output_criterion = '';
                            $criterions_arr = $a->select;

                            foreach ($criterions_arr as $c) {
                            $output_criterion .=
                            '
                            <div class="form-check">
                                <input class="form-check-input position-static" type="radio" name="blankRadio' .
                                                $j .
                                                '" id="blankRadioo' .
                                                $x .
                                                '" value="' .
                                                $c->id .
                                                '" aria-label="..." required>
                                <label for="blankRadioo' .
                                                $x .
                                                '">' .
                                    $c->a .
                                    '</label>
                            </div>';

                            $i++;
                            if ($i == 4) {
                            $j++;
                            $i = 0;
                            }
                            $x++;
                            }

                            $output .= '<div class="form-group"><label for="">' . $a->section . '</label> </div>' . '<div
                                class="form-group">' . $output_criterion . '<input type="hidden" name="check[]"
                                    value="' . Crypt::encryptString($a->answer) . '"></div>';
                            }
                            echo $output;
                            ?>


                            <input type="submit" class="btn btn-success" value="ส่งคำตอบ"> <br><br>




                        </form>

                        <center>
                            <button class="btn btn-primary" onclick="stepper1.previous()">ย้อนกลับ</button>
                        </center>

                    </div>

                </div>
            </div>
        </div>


    </div>


    <div class="modal fade" id="test-ex">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="lable-ex"></h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <input type="hidden" id="id_sexa" name="id_sexa" value="">
                <form id="form-ex">
                    <div class="modal-body">
                        <div id="text-show">

                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-secondary">ส่งคำตอบ</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection


@section('javascript')
    <script src="{{ asset('js/main.js') }}"></script>
    <script src="{{ asset('js/showtest.js') }}"></script>
    <script src="{{ asset('js/pretest.js') }}"></script>
    <script src="{{ asset('js/posttest.js') }}"></script>
@endsection
