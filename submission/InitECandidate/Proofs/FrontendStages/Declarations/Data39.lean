import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify23
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body39_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "u256_ws"), none)) "alloc" [Flapjack.Exp.const 640#64]

def body39_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body39_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.global "u256_ws") (Flapjack.Exp.const 0#64)) body39_0 body39_1

def body39_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body39_4 : Prog (BitVec 64) :=
.seq body39_2 body39_3

def originalData39 : Decl (BitVec 64) :=
.function { name := "u256_ws_init", inline := false, exported := false, params := [], body := body39_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData39 : Decl (BitVec 64) :=
.function { name := "u256_ws_init", inline := false, exported := false, params := [], body := body39_4, returnShape := (Flapjack.Shape.one) }
def original39 := Pancake.PanLang.declToHOL originalData39
def simplified39 := Pancake.PanLang.declToHOL simplifiedData39
end InitECandidate.Proofs.FrontendStages.Declarations
