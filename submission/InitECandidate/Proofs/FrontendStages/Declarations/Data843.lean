import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify827
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body843_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.global "empty_trie_root")

def body843_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body843_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "has") (Flapjack.Exp.const 0#64)) body843_0 body843_1

def body843_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def body843_4 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("ws_storage_root_of") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body843_3

def body843_5 : Prog (BitVec 64) :=
.seq body843_2 body843_4

def body843_6 : Prog (BitVec 64) :=
.decCall ("has") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "cache", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body843_5

def originalData843 : Decl (BitVec 64) :=
.function { name := "cache_get_root", inline := false, exported := false, params := [("cache", Flapjack.Shape.one), ("addr", Flapjack.Shape.one)], body := body843_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData843 : Decl (BitVec 64) :=
.function { name := "cache_get_root", inline := false, exported := false, params := [("cache", Flapjack.Shape.one), ("addr", Flapjack.Shape.one)], body := body843_6, returnShape := (Flapjack.Shape.one) }
def original843 := Pancake.PanLang.declToHOL originalData843
def simplified843 := Pancake.PanLang.declToHOL simplifiedData843
end InitECandidate.Proofs.FrontendStages.Declarations
