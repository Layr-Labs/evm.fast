import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data750
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate734
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody750_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "one"]

def globalBody750_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody750_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "e")

def globalBody750_3 : Prog (BitVec 64) :=
.seq globalBody750_1 globalBody750_2

def globalBody750_4 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "one", Flapjack.Exp.const 576#64]) globalBody750_3

def globalBody750_5 : Prog (BitVec 64) :=
.seq globalBody750_0 globalBody750_4

def globalBody750_6 : Prog (BitVec 64) :=
.decCall ("one") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) globalBody750_5

def globalBody750_7 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody750_6

def globalData750 : Decl (BitVec 64) :=
.function { name := "fp12_is_one", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := globalBody750_7, returnShape := (Flapjack.Shape.one) }
def globalOutput750 := Pancake.PanLang.declToHOL globalData750
end InitECandidate.Proofs.FrontendStages.Declarations
