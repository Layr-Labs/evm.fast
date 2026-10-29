import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data627
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate604
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody627_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.const 0#64)

def globalBody627_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody627_2 : Prog (BitVec 64) :=
.seq globalBody627_0 globalBody627_1

def globalBody627_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "na", Flapjack.Exp.var Flapjack.VarKind.local "nb"])) globalBody627_2

def globalBody627_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody627_5 : Prog (BitVec 64) :=
.seq globalBody627_3 globalBody627_4

def globalBody627_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "o",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 4294967295#64])

def globalBody627_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "carry"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 32#64))

def globalBody627_8 : Prog (BitVec 64) :=
.seq globalBody627_6 globalBody627_7

def globalBody627_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody627_10 : Prog (BitVec 64) :=
.seq globalBody627_8 globalBody627_9

def globalBody627_11 : Prog (BitVec 64) :=
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
    Flapjack.Exp.var Flapjack.VarKind.local "carry"]) globalBody627_10

def globalBody627_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")) globalBody627_11

def globalBody627_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "o",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nb", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "carry")

def globalBody627_14 : Prog (BitVec 64) :=
.seq globalBody627_12 globalBody627_13

def globalBody627_15 : Prog (BitVec 64) :=
.seq globalBody627_14 globalBody627_1

def globalBody627_16 : Prog (BitVec 64) :=
.dec ("o") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]) globalBody627_15

def globalBody627_17 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody627_16

def globalBody627_18 : Prog (BitVec 64) :=
.dec ("carry") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody627_17

def globalBody627_19 : Prog (BitVec 64) :=
.dec ("ai") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) globalBody627_18

def globalBody627_20 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "na")) globalBody627_19

def globalBody627_21 : Prog (BitVec 64) :=
.seq globalBody627_5 globalBody627_20

def globalBody627_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody627_23 : Prog (BitVec 64) :=
.seq globalBody627_21 globalBody627_22

def globalBody627_24 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody627_23

def globalData627 : Decl (BitVec 64) :=
.function { name := "bn_mul", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("na", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("nb", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := globalBody627_24, returnShape := (Flapjack.Shape.one) }
def globalOutput627 := Pancake.PanLang.declToHOL globalData627
end InitECandidate.Proofs.FrontendStages.Declarations
