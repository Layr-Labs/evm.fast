import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify446
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body462_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "total"]

def body462_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extend_memory"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x")]

def body462_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body462_3 : Prog (BitVec 64) :=
.seq body462_1 body462_2

def body462_4 : Prog (BitVec 64) :=
.seq body462_0 body462_3

def body462_5 : Prog (BitVec 64) :=
.decCall ("total") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) body462_4

def body462_6 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "size"]) body462_5

def body462_7 : Prog (BitVec 64) :=
.seq body462_0 body462_1

def body462_8 : Prog (BitVec 64) :=
.seq body462_7 body462_2

def body462_9 : Prog (BitVec 64) :=
.decCall ("total") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) body462_8

def body462_10 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "size"]) body462_9

def originalData462 : Decl (BitVec 64) :=
.function { name := "charge_with_memory", inline := false, exported := false, params := [("base", Flapjack.Shape.one),
  ("start", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("size", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body462_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData462 : Decl (BitVec 64) :=
.function { name := "charge_with_memory", inline := false, exported := false, params := [("base", Flapjack.Shape.one),
  ("start", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("size", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body462_10, returnShape := (Flapjack.Shape.one) }
def original462 := Pancake.PanLang.declToHOL originalData462
def simplified462 := Pancake.PanLang.declToHOL simplifiedData462
end InitECandidate.Proofs.FrontendStages.Declarations
