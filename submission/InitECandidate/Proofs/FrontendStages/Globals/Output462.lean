import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data462
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate446
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody462_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "total"]

def globalBody462_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extend_memory"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x")]

def globalBody462_2 : Prog (BitVec 64) :=
.seq globalBody462_0 globalBody462_1

def globalBody462_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody462_4 : Prog (BitVec 64) :=
.seq globalBody462_2 globalBody462_3

def globalBody462_5 : Prog (BitVec 64) :=
.decCall ("total") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) globalBody462_4

def globalBody462_6 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "size"]) globalBody462_5

def globalData462 : Decl (BitVec 64) :=
.function { name := "charge_with_memory", inline := false, exported := false, params := [("base", Flapjack.Shape.one),
  ("start", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("size", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody462_6, returnShape := (Flapjack.Shape.one) }
def globalOutput462 := Pancake.PanLang.declToHOL globalData462
end InitECandidate.Proofs.FrontendStages.Declarations
