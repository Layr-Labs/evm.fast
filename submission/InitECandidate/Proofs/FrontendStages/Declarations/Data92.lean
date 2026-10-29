import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify76
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body92_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "sha_st"), none)) "alloc" [Flapjack.Exp.const 64#64]

def body92_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "sha_pad"), none)) "alloc" [Flapjack.Exp.const 128#64]

def body92_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body92_3 : Prog (BitVec 64) :=
.seq body92_1 body92_2

def body92_4 : Prog (BitVec 64) :=
.seq body92_0 body92_3

def body92_5 : Prog (BitVec 64) :=
.seq body92_0 body92_1

def body92_6 : Prog (BitVec 64) :=
.seq body92_5 body92_2

def originalData92 : Decl (BitVec 64) :=
.function { name := "sha256_init", inline := false, exported := false, params := [], body := body92_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData92 : Decl (BitVec 64) :=
.function { name := "sha256_init", inline := false, exported := false, params := [], body := body92_6, returnShape := (Flapjack.Shape.one) }
def original92 := Pancake.PanLang.declToHOL originalData92
def simplified92 := Pancake.PanLang.declToHOL simplifiedData92
end InitECandidate.Proofs.FrontendStages.Declarations
