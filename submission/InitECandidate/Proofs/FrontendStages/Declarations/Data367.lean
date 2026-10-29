import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify351
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body367_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body367_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body367_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "leaf"))
  (Flapjack.Exp.const 0#64)) body367_0 body367_1

def body367_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "decode_account_from_leaf"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "leaf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "leaf"), Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body367_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body367_5 : Prog (BitVec 64) :=
.seq body367_3 body367_4

def body367_6 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 56#64]) body367_5

def body367_7 : Prog (BitVec 64) :=
.seq body367_2 body367_6

def body367_8 : Prog (BitVec 64) :=
.decCall ("leaf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("ws_account_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body367_7

def originalData367 : Decl (BitVec 64) :=
.function { name := "ws_get_account_optional", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body367_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData367 : Decl (BitVec 64) :=
.function { name := "ws_get_account_optional", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body367_8, returnShape := (Flapjack.Shape.one) }
def original367 := Pancake.PanLang.declToHOL originalData367
def simplified367 := Pancake.PanLang.declToHOL simplifiedData367
end InitECandidate.Proofs.FrontendStages.Declarations
