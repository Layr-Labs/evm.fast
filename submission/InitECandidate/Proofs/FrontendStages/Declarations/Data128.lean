import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify112
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body128_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body128_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body128_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 128#64)) body128_0 body128_1

def body128_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def body128_4 : Prog (BitVec 64) :=
.decCall ("ll") (Flapjack.Shape.one) ("rlp_be_len") ([Flapjack.Exp.var Flapjack.VarKind.local "w"]) body128_3

def body128_5 : Prog (BitVec 64) :=
.seq body128_2 body128_4

def originalData128 : Decl (BitVec 64) :=
.function { name := "rlp_word_encoded_len", inline := false, exported := false, params := [("w", Flapjack.Shape.one)], body := body128_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData128 : Decl (BitVec 64) :=
.function { name := "rlp_word_encoded_len", inline := false, exported := false, params := [("w", Flapjack.Shape.one)], body := body128_5, returnShape := (Flapjack.Shape.one) }
def original128 := Pancake.PanLang.declToHOL originalData128
def simplified128 := Pancake.PanLang.declToHOL simplifiedData128
end InitECandidate.Proofs.FrontendStages.Declarations
