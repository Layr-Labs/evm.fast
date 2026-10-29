import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify252
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body268_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "key_to_nibbles"
  [Flapjack.Exp.var Flapjack.VarKind.local "key_hash32", Flapjack.Exp.const 32#64,
    Flapjack.Exp.var Flapjack.VarKind.global "mpt_nib_scratch"]

def body268_1 : Prog (BitVec 64) :=
Flapjack.Prog.call none "trie_walk"
  [Flapjack.Exp.var Flapjack.VarKind.local "root", Flapjack.Exp.var Flapjack.VarKind.global "mpt_nib_scratch",
    Flapjack.Exp.const 64#64]

def body268_2 : Prog (BitVec 64) :=
.seq body268_0 body268_1

def originalData268 : Decl (BitVec 64) :=
.function { name := "trie_lookup", inline := false, exported := false, params := [("root", Flapjack.Shape.one), ("key_hash32", Flapjack.Shape.one)], body := body268_2, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData268 : Decl (BitVec 64) :=
.function { name := "trie_lookup", inline := false, exported := false, params := [("root", Flapjack.Shape.one), ("key_hash32", Flapjack.Shape.one)], body := body268_2, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original268 := Pancake.PanLang.declToHOL originalData268
def simplified268 := Pancake.PanLang.declToHOL simplifiedData268
end InitECandidate.Proofs.FrontendStages.Declarations
