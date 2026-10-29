import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify569
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body585_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "done" (Flapjack.Exp.const 1#64)

def body585_1 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("EvmErr", "err",
          Flapjack.Prog.call (some (none, none)) "frame_exception" [Flapjack.Exp.var Flapjack.VarKind.local "err"])))
  "op_dispatch"
  [Flapjack.Exp.loadByte
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 48#64]),
          Flapjack.Exp.var Flapjack.VarKind.local "pc"])]

def body585_2 : Prog (BitVec 64) :=
.dec ("err") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body585_1

def body585_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "pc")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 56#64]))) body585_0 body585_2

def body585_4 : Prog (BitVec 64) :=
.dec ("pc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 0#64])) body585_3

def body585_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 104#64]))
  (Flapjack.Exp.const 0#64)) body585_0 body585_4

def body585_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 32#64]))
  (Flapjack.Exp.const 0#64)) body585_0 body585_5

def body585_7 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body585_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_epilogue" []

def body585_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "ev"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 0#64]))

def body585_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "cur_cont"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 8#64]))

def body585_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 0#64)

def body585_12 : Prog (BitVec 64) :=
.seq body585_10 body585_11

def body585_13 : Prog (BitVec 64) :=
.seq body585_9 body585_12

def body585_14 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (none,
      some
        ("EvmErr", "err2",
          Flapjack.Prog.call (some (none, none)) "frame_exception" [Flapjack.Exp.var Flapjack.VarKind.local "err2"])))
  "finish_child" []

def body585_15 : Prog (BitVec 64) :=
.dec ("err2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body585_14

def body585_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.const 0#64)) body585_13 body585_15

def body585_17 : Prog (BitVec 64) :=
.seq body585_8 body585_16

def body585_18 : Prog (BitVec 64) :=
.seq body585_7 body585_17

def body585_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "done") (Flapjack.Exp.const 0#64)) body585_18 body585_7

def body585_20 : Prog (BitVec 64) :=
.seq body585_6 body585_19

def body585_21 : Prog (BitVec 64) :=
.dec ("done") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body585_20

def body585_22 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) body585_21

def body585_23 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body585_24 : Prog (BitVec 64) :=
.seq body585_22 body585_23

def body585_25 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body585_24

def body585_26 : Prog (BitVec 64) :=
.seq body585_9 body585_10

def body585_27 : Prog (BitVec 64) :=
.seq body585_26 body585_11

def body585_28 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "cur_cont", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.const 0#64)) body585_27 body585_15

def body585_29 : Prog (BitVec 64) :=
.seq body585_8 body585_28

def body585_30 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "done") (Flapjack.Exp.const 0#64)) body585_29 body585_7

def body585_31 : Prog (BitVec 64) :=
.seq body585_6 body585_30

def body585_32 : Prog (BitVec 64) :=
.dec ("done") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body585_31

def body585_33 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) body585_32

def body585_34 : Prog (BitVec 64) :=
.seq body585_33 body585_23

def body585_35 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body585_34

def originalData585 : Decl (BitVec 64) :=
.function { name := "run_frames", inline := false, exported := false, params := [], body := body585_25, returnShape := (Flapjack.Shape.one) }
def simplifiedData585 : Decl (BitVec 64) :=
.function { name := "run_frames", inline := false, exported := false, params := [], body := body585_35, returnShape := (Flapjack.Shape.one) }
def original585 := Pancake.PanLang.declToHOL originalData585
def simplified585 := Pancake.PanLang.declToHOL simplifiedData585
end InitECandidate.Proofs.FrontendStages.Declarations
