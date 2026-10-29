import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify356
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body372_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body372_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body372_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body372_0 body372_1

def body372_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body372_4 : Prog (BitVec 64) :=
.seq body372_2 body372_3

def body372_5 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "root", Flapjack.Exp.var Flapjack.VarKind.global "empty_trie_root",
  Flapjack.Exp.const 32#64]) body372_4

def body372_6 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("ws_storage_root_of") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body372_5

def originalData372 : Decl (BitVec 64) :=
.function { name := "ws_account_has_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body372_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData372 : Decl (BitVec 64) :=
.function { name := "ws_account_has_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body372_6, returnShape := (Flapjack.Shape.one) }
def original372 := Pancake.PanLang.declToHOL originalData372
def simplified372 := Pancake.PanLang.declToHOL simplifiedData372
end InitECandidate.Proofs.FrontendStages.Declarations
