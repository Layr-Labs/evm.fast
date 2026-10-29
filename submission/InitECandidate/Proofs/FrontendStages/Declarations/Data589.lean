import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify573
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body589_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 7#64)

def body589_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body589_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1024#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 128#64]))) body589_0 body589_1

def body589_3 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("EvmErr", "perr",
          Flapjack.Prog.seq
            (Flapjack.Prog.ite
              (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "perr")
                (Flapjack.Exp.const 1#64))
              (Flapjack.Prog.seq
                (Flapjack.Prog.call (some (none, none)) "scratch_release"
                  [Flapjack.Exp.load Flapjack.Shape.one
                      (Flapjack.Exp.op Flapjack.BinOp.add
                        [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 208#64])])
                (Flapjack.Prog.seq
                  (Flapjack.Prog.call (some (none, none)) "frame_mem_release"
                    [Flapjack.Exp.load Flapjack.Shape.one
                        (Flapjack.Exp.op Flapjack.BinOp.add
                          [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 224#64])])
                  (Flapjack.Prog.seq
                    (Flapjack.Prog.assign Flapjack.VarKind.global "ev"
                      (Flapjack.Exp.var Flapjack.VarKind.local "parent"))
                    (Flapjack.Prog.seq
                      (Flapjack.Prog.assign Flapjack.VarKind.global "cur_cont"
                        (Flapjack.Exp.var Flapjack.VarKind.local "parent_cont"))
                      (Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.var Flapjack.VarKind.local "perr"))))))
              Flapjack.Prog.skip)
            (Flapjack.Prog.seq
              (Flapjack.Prog.call (some (none, none)) "state_restore"
                [Flapjack.Exp.var Flapjack.VarKind.local "prep_snapshot"])
              (Flapjack.Prog.seq
                (Flapjack.Prog.store
                  (Flapjack.Exp.op Flapjack.BinOp.add
                    [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64])
                  (Flapjack.Exp.var Flapjack.VarKind.local "prep_reservoir"))
                (Flapjack.Prog.seq
                  (Flapjack.Prog.store
                    (Flapjack.Exp.op Flapjack.BinOp.add
                      [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 200#64])
                    (Flapjack.Exp.const 0#64))
                  (Flapjack.Prog.seq (Flapjack.Prog.call (some (none, none)) "refill_frame_state_gas" [])
                    (Flapjack.Prog.seq
                      (Flapjack.Prog.call (some (none, none)) "frame_halt"
                        [Flapjack.Exp.var Flapjack.VarKind.local "perr"])
                      (Flapjack.Prog.seq
                        (Flapjack.Prog.assign Flapjack.VarKind.global "ev"
                          (Flapjack.Exp.var Flapjack.VarKind.local "parent"))
                        (Flapjack.Prog.seq
                          (Flapjack.Prog.assign Flapjack.VarKind.global "cur_cont"
                            (Flapjack.Exp.var Flapjack.VarKind.local "parent_cont"))
                          (Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "child"))))))))))))
  "depth0_prepare" []

def body589_4 : Prog (BitVec 64) :=
.dec ("perr") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body589_3

def body589_5 : Prog (BitVec 64) :=
.dec ("prep_reservoir") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64])) body589_4

def body589_6 : Prog (BitVec 64) :=
.decCall ("prep_snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) body589_5

def body589_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 128#64]))
  (Flapjack.Exp.const 0#64)) body589_6 body589_1

def body589_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "snapshot")

def body589_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_start" []

def body589_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "run_frames" []

def body589_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "child")

def body589_12 : Prog (BitVec 64) :=
.seq body589_10 body589_11

def body589_13 : Prog (BitVec 64) :=
.seq body589_9 body589_12

def body589_14 : Prog (BitVec 64) :=
.seq body589_8 body589_13

def body589_15 : Prog (BitVec 64) :=
.decCall ("snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) body589_14

def body589_16 : Prog (BitVec 64) :=
.seq body589_1 body589_15

def body589_17 : Prog (BitVec 64) :=
.seq body589_7 body589_16

def body589_18 : Prog (BitVec 64) :=
.seq body589_1 body589_17

def body589_19 : Prog (BitVec 64) :=
.decCall ("child") (Flapjack.Shape.one) ("frame_open") ([Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 0#64]) body589_18

def body589_20 : Prog (BitVec 64) :=
.dec ("parent_cont") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "cur_cont") body589_19

def body589_21 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "ev") body589_20

def body589_22 : Prog (BitVec 64) :=
.seq body589_1 body589_21

def body589_23 : Prog (BitVec 64) :=
.seq body589_2 body589_22

def body589_24 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("EvmErr", "perr",
          Flapjack.Prog.seq
            (Flapjack.Prog.seq
              (Flapjack.Prog.seq
                (Flapjack.Prog.seq
                  (Flapjack.Prog.seq
                    (Flapjack.Prog.seq
                      (Flapjack.Prog.seq
                        (Flapjack.Prog.seq
                          (Flapjack.Prog.ite
                            (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "perr")
                              (Flapjack.Exp.const 1#64))
                            (Flapjack.Prog.seq
                              (Flapjack.Prog.seq
                                (Flapjack.Prog.seq
                                  (Flapjack.Prog.seq
                                    (Flapjack.Prog.call (some (none, none)) "scratch_release"
                                      [Flapjack.Exp.load Flapjack.Shape.one
                                          (Flapjack.Exp.op Flapjack.BinOp.add
                                            [Flapjack.Exp.var Flapjack.VarKind.local "child",
                                              Flapjack.Exp.const 208#64])])
                                    (Flapjack.Prog.call (some (none, none)) "frame_mem_release"
                                      [Flapjack.Exp.load Flapjack.Shape.one
                                          (Flapjack.Exp.op Flapjack.BinOp.add
                                            [Flapjack.Exp.var Flapjack.VarKind.local "child",
                                              Flapjack.Exp.const 224#64])]))
                                  (Flapjack.Prog.assign Flapjack.VarKind.global "ev"
                                    (Flapjack.Exp.var Flapjack.VarKind.local "parent")))
                                (Flapjack.Prog.assign Flapjack.VarKind.global "cur_cont"
                                  (Flapjack.Exp.var Flapjack.VarKind.local "parent_cont")))
                              (Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.var Flapjack.VarKind.local "perr")))
                            Flapjack.Prog.skip)
                          (Flapjack.Prog.call (some (none, none)) "state_restore"
                            [Flapjack.Exp.var Flapjack.VarKind.local "prep_snapshot"]))
                        (Flapjack.Prog.store
                          (Flapjack.Exp.op Flapjack.BinOp.add
                            [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64])
                          (Flapjack.Exp.var Flapjack.VarKind.local "prep_reservoir")))
                      (Flapjack.Prog.store
                        (Flapjack.Exp.op Flapjack.BinOp.add
                          [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 200#64])
                        (Flapjack.Exp.const 0#64)))
                    (Flapjack.Prog.call (some (none, none)) "refill_frame_state_gas" []))
                  (Flapjack.Prog.call (some (none, none)) "frame_halt"
                    [Flapjack.Exp.var Flapjack.VarKind.local "perr"]))
                (Flapjack.Prog.assign Flapjack.VarKind.global "ev" (Flapjack.Exp.var Flapjack.VarKind.local "parent")))
              (Flapjack.Prog.assign Flapjack.VarKind.global "cur_cont"
                (Flapjack.Exp.var Flapjack.VarKind.local "parent_cont")))
            (Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "child")))))
  "depth0_prepare" []

def body589_25 : Prog (BitVec 64) :=
.dec ("perr") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body589_24

def body589_26 : Prog (BitVec 64) :=
.dec ("prep_reservoir") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64])) body589_25

def body589_27 : Prog (BitVec 64) :=
.decCall ("prep_snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) body589_26

def body589_28 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 128#64]))
  (Flapjack.Exp.const 0#64)) body589_27 body589_1

def body589_29 : Prog (BitVec 64) :=
.seq body589_8 body589_9

def body589_30 : Prog (BitVec 64) :=
.seq body589_29 body589_10

def body589_31 : Prog (BitVec 64) :=
.seq body589_30 body589_11

def body589_32 : Prog (BitVec 64) :=
.decCall ("snapshot") (Flapjack.Shape.one) ("state_snapshot") ([]) body589_31

def body589_33 : Prog (BitVec 64) :=
.seq body589_28 body589_32

def body589_34 : Prog (BitVec 64) :=
.decCall ("child") (Flapjack.Shape.one) ("frame_open") ([Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 0#64]) body589_33

def body589_35 : Prog (BitVec 64) :=
.dec ("parent_cont") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "cur_cont") body589_34

def body589_36 : Prog (BitVec 64) :=
.dec ("parent") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "ev") body589_35

def body589_37 : Prog (BitVec 64) :=
.seq body589_2 body589_36

def originalData589 : Decl (BitVec 64) :=
.function { name := "process_message", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := body589_23, returnShape := (Flapjack.Shape.one) }
def simplifiedData589 : Decl (BitVec 64) :=
.function { name := "process_message", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := body589_37, returnShape := (Flapjack.Shape.one) }
def original589 := Pancake.PanLang.declToHOL originalData589
def simplified589 := Pancake.PanLang.declToHOL simplifiedData589
end InitECandidate.Proofs.FrontendStages.Declarations
