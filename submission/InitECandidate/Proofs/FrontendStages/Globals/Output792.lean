import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data792
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate776
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody792_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "swu_g1"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "t"]

def globalBody792_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "iso_map_g1"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def globalBody792_2 : Prog (BitVec 64) :=
.seq globalBody792_0 globalBody792_1

def globalBody792_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 1624#64],
    Flapjack.Exp.const 1#64]

def globalBody792_4 : Prog (BitVec 64) :=
.seq globalBody792_2 globalBody792_3

def globalBody792_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody792_6 : Prog (BitVec 64) :=
.seq globalBody792_4 globalBody792_5

def globalBody792_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody792_8 : Prog (BitVec 64) :=
.seq globalBody792_6 globalBody792_7

def globalBody792_9 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) globalBody792_8

def globalBody792_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody792_9

def globalData792 : Decl (BitVec 64) :=
.function { name := "map_fp_to_g1", inline := false, exported := false, params := [("r", Flapjack.Shape.one),
  ("t",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := globalBody792_10, returnShape := (Flapjack.Shape.one) }
def globalOutput792 := Pancake.PanLang.declToHOL globalData792
end InitECandidate.Proofs.FrontendStages.Declarations
