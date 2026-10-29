import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify779
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body795_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "v",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "kp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64],
            Flapjack.Exp.const 96#64]]]

def body795_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "v",
    Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body795_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "zp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 96#64]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "kp",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.sub
                  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 2#64],
                Flapjack.Exp.var Flapjack.VarKind.local "j"],
            Flapjack.Exp.const 96#64]]]

def body795_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "v",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def body795_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body795_5 : Prog (BitVec 64) :=
.seq body795_3 body795_4

def body795_6 : Prog (BitVec 64) :=
.seq body795_2 body795_5

def body795_7 : Prog (BitVec 64) :=
.seq body795_1 body795_6

def body795_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])) body795_7

def body795_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body795_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body795_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body795_12 : Prog (BitVec 64) :=
.seq body795_10 body795_11

def body795_13 : Prog (BitVec 64) :=
.seq body795_9 body795_12

def body795_14 : Prog (BitVec 64) :=
.seq body795_8 body795_13

def body795_15 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body795_14

def body795_16 : Prog (BitVec 64) :=
.seq body795_0 body795_15

def body795_17 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body795_16

def body795_18 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body795_17

def body795_19 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body795_18

def body795_20 : Prog (BitVec 64) :=
.seq body795_1 body795_2

def body795_21 : Prog (BitVec 64) :=
.seq body795_20 body795_3

def body795_22 : Prog (BitVec 64) :=
.seq body795_21 body795_4

def body795_23 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])) body795_22

def body795_24 : Prog (BitVec 64) :=
.seq body795_23 body795_9

def body795_25 : Prog (BitVec 64) :=
.seq body795_24 body795_10

def body795_26 : Prog (BitVec 64) :=
.seq body795_25 body795_11

def body795_27 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body795_26

def body795_28 : Prog (BitVec 64) :=
.seq body795_0 body795_27

def body795_29 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body795_28

def body795_30 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body795_29

def body795_31 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body795_30

def originalData795 : Decl (BitVec 64) :=
.function { name := "iso_horner_fp2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("kp", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("x", Flapjack.Shape.one),
  ("zp", Flapjack.Shape.one)], body := body795_19, returnShape := (Flapjack.Shape.one) }
def simplifiedData795 : Decl (BitVec 64) :=
.function { name := "iso_horner_fp2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("kp", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("x", Flapjack.Shape.one),
  ("zp", Flapjack.Shape.one)], body := body795_31, returnShape := (Flapjack.Shape.one) }
def original795 := Pancake.PanLang.declToHOL originalData795
def simplified795 := Pancake.PanLang.declToHOL simplifiedData795
end InitECandidate.Proofs.FrontendStages.Declarations
