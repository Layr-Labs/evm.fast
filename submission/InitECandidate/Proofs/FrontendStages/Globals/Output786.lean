import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data786
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate770
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody786_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody786_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 96#64]]

def globalBody786_2 : Prog (BitVec 64) :=
.seq globalBody786_0 globalBody786_1

def globalBody786_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 192#64]]

def globalBody786_4 : Prog (BitVec 64) :=
.seq globalBody786_2 globalBody786_3

def globalBody786_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "f"]

def globalBody786_6 : Prog (BitVec 64) :=
.seq globalBody786_4 globalBody786_5

def globalBody786_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody786_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "f",
    Flapjack.Exp.var Flapjack.VarKind.local "f"]

def globalBody786_9 : Prog (BitVec 64) :=
.seq globalBody786_7 globalBody786_8

def globalBody786_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_doubling_step"
  [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.var Flapjack.VarKind.local "co"]

def globalBody786_11 : Prog (BitVec 64) :=
.seq globalBody786_9 globalBody786_10

def globalBody786_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_ell"
  [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "co",
    Flapjack.Exp.var Flapjack.VarKind.local "px", Flapjack.Exp.var Flapjack.VarKind.local "py"]

def globalBody786_13 : Prog (BitVec 64) :=
.seq globalBody786_11 globalBody786_12

def globalBody786_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_addition_step"
  [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.var Flapjack.VarKind.local "q",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "co"]

def globalBody786_15 : Prog (BitVec 64) :=
.seq globalBody786_14 globalBody786_12

def globalBody786_16 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody786_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x")
        (Flapjack.Exp.var Flapjack.VarKind.local "i"),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) globalBody786_15 globalBody786_16

def globalBody786_18 : Prog (BitVec 64) :=
.seq globalBody786_13 globalBody786_17

def globalBody786_19 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody786_18

def globalBody786_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "f"]

def globalBody786_21 : Prog (BitVec 64) :=
.seq globalBody786_19 globalBody786_20

def globalBody786_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody786_23 : Prog (BitVec 64) :=
.seq globalBody786_21 globalBody786_22

def globalBody786_24 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody786_25 : Prog (BitVec 64) :=
.seq globalBody786_23 globalBody786_24

def globalBody786_26 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 63#64) globalBody786_25

def globalBody786_27 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
      Flapjack.Exp.const 1376#64])) globalBody786_26

def globalBody786_28 : Prog (BitVec 64) :=
.seq globalBody786_6 globalBody786_27

def globalBody786_29 : Prog (BitVec 64) :=
.decCall ("co") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 3#64]]) globalBody786_28

def globalBody786_30 : Prog (BitVec 64) :=
.decCall ("rp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) globalBody786_29

def globalBody786_31 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody786_30

def globalData786 : Decl (BitVec 64) :=
.function { name := "pair_miller_loop", inline := false, exported := false, params := [("f", Flapjack.Shape.one),
  ("px",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("py",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("q", Flapjack.Shape.one)], body := globalBody786_31, returnShape := (Flapjack.Shape.one) }
def globalOutput786 := Pancake.PanLang.declToHOL globalData786
end InitECandidate.Proofs.FrontendStages.Declarations
