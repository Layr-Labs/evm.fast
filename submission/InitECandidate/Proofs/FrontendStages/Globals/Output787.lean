import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data787
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate771
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody787_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody787_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody787_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ip") (Flapjack.Exp.const 1#64)) globalBody787_0 globalBody787_1

def globalBody787_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "iq") (Flapjack.Exp.const 1#64)) globalBody787_0 globalBody787_1

def globalBody787_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_normalize"
  [Flapjack.Exp.var Flapjack.VarKind.local "pa", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def globalBody787_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_normalize"
  [Flapjack.Exp.var Flapjack.VarKind.local "qa", Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody787_6 : Prog (BitVec 64) :=
.seq globalBody787_4 globalBody787_5

def globalBody787_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_miller_loop"
  [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "px",
    Flapjack.Exp.var Flapjack.VarKind.local "py", Flapjack.Exp.var Flapjack.VarKind.local "qa"]

def globalBody787_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc",
    Flapjack.Exp.var Flapjack.VarKind.local "f"]

def globalBody787_9 : Prog (BitVec 64) :=
.seq globalBody787_7 globalBody787_8

def globalBody787_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody787_11 : Prog (BitVec 64) :=
.seq globalBody787_9 globalBody787_10

def globalBody787_12 : Prog (BitVec 64) :=
.seq globalBody787_11 globalBody787_0

def globalBody787_13 : Prog (BitVec 64) :=
.dec ("py") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pa", Flapjack.Exp.const 48#64])) globalBody787_12

def globalBody787_14 : Prog (BitVec 64) :=
.dec ("px") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.load
  (Flapjack.Shape.comb
    [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
      Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pa")) globalBody787_13

def globalBody787_15 : Prog (BitVec 64) :=
.seq globalBody787_6 globalBody787_14

def globalBody787_16 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) globalBody787_15

def globalBody787_17 : Prog (BitVec 64) :=
.decCall ("qa") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) globalBody787_16

def globalBody787_18 : Prog (BitVec 64) :=
.decCall ("pa") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody787_17

def globalBody787_19 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody787_18

def globalBody787_20 : Prog (BitVec 64) :=
.seq globalBody787_3 globalBody787_19

def globalBody787_21 : Prog (BitVec 64) :=
.decCall ("iq") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "q"]) globalBody787_20

def globalBody787_22 : Prog (BitVec 64) :=
.seq globalBody787_2 globalBody787_21

def globalBody787_23 : Prog (BitVec 64) :=
.decCall ("ip") (Flapjack.Shape.one) ("g1_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p"]) globalBody787_22

def globalData787 : Decl (BitVec 64) :=
.function { name := "pair_accumulate", inline := false, exported := false, params := [("acc", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("q", Flapjack.Shape.one)], body := globalBody787_23, returnShape := (Flapjack.Shape.one) }
def globalOutput787 := Pancake.PanLang.declToHOL globalData787
end InitECandidate.Proofs.FrontendStages.Declarations
