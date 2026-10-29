import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify611
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body627_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.const 0#64)

def body627_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body627_2 : Prog (BitVec 64) :=
.seq body627_0 body627_1

def body627_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "na", Flapjack.Exp.var Flapjack.VarKind.local "nb"])) body627_2

def body627_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body627_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "o",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 4294967295#64])

def body627_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "carry"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 32#64))

def body627_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body627_8 : Prog (BitVec 64) :=
.seq body627_6 body627_7

def body627_9 : Prog (BitVec 64) :=
.seq body627_5 body627_8

def body627_10 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "ai",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "o",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.var Flapjack.VarKind.local "carry"]) body627_9

def body627_11 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")) body627_10

def body627_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "o",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nb", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "carry")

def body627_13 : Prog (BitVec 64) :=
.seq body627_12 body627_1

def body627_14 : Prog (BitVec 64) :=
.seq body627_11 body627_13

def body627_15 : Prog (BitVec 64) :=
.dec ("o") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]) body627_14

def body627_16 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body627_15

def body627_17 : Prog (BitVec 64) :=
.dec ("carry") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body627_16

def body627_18 : Prog (BitVec 64) :=
.dec ("ai") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) body627_17

def body627_19 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "na")) body627_18

def body627_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body627_21 : Prog (BitVec 64) :=
.seq body627_19 body627_20

def body627_22 : Prog (BitVec 64) :=
.seq body627_4 body627_21

def body627_23 : Prog (BitVec 64) :=
.seq body627_3 body627_22

def body627_24 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body627_23

def body627_25 : Prog (BitVec 64) :=
.seq body627_3 body627_4

def body627_26 : Prog (BitVec 64) :=
.seq body627_5 body627_6

def body627_27 : Prog (BitVec 64) :=
.seq body627_26 body627_7

def body627_28 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "ai",
        Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "b",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "o",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]]),
    Flapjack.Exp.var Flapjack.VarKind.local "carry"]) body627_27

def body627_29 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")) body627_28

def body627_30 : Prog (BitVec 64) :=
.seq body627_29 body627_12

def body627_31 : Prog (BitVec 64) :=
.seq body627_30 body627_1

def body627_32 : Prog (BitVec 64) :=
.dec ("o") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]) body627_31

def body627_33 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body627_32

def body627_34 : Prog (BitVec 64) :=
.dec ("carry") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body627_33

def body627_35 : Prog (BitVec 64) :=
.dec ("ai") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) body627_34

def body627_36 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "na")) body627_35

def body627_37 : Prog (BitVec 64) :=
.seq body627_25 body627_36

def body627_38 : Prog (BitVec 64) :=
.seq body627_37 body627_20

def body627_39 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body627_38

def originalData627 : Decl (BitVec 64) :=
.function { name := "bn_mul", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("na", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("nb", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := body627_24, returnShape := (Flapjack.Shape.one) }
def simplifiedData627 : Decl (BitVec 64) :=
.function { name := "bn_mul", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("na", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("nb", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := body627_39, returnShape := (Flapjack.Shape.one) }
def original627 := Pancake.PanLang.declToHOL originalData627
def simplified627 := Pancake.PanLang.declToHOL simplifiedData627
end InitECandidate.Proofs.FrontendStages.Declarations
