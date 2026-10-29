import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify346
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body362_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nonce")

def body362_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "balance")

def body362_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "empty_trie_root")

def body362_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_hash")

def body362_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body362_5 : Prog (BitVec 64) :=
.seq body362_3 body362_4

def body362_6 : Prog (BitVec 64) :=
.seq body362_2 body362_5

def body362_7 : Prog (BitVec 64) :=
.seq body362_1 body362_6

def body362_8 : Prog (BitVec 64) :=
.seq body362_0 body362_7

def body362_9 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 56#64]) body362_8

def body362_10 : Prog (BitVec 64) :=
.seq body362_0 body362_1

def body362_11 : Prog (BitVec 64) :=
.seq body362_10 body362_2

def body362_12 : Prog (BitVec 64) :=
.seq body362_11 body362_3

def body362_13 : Prog (BitVec 64) :=
.seq body362_12 body362_4

def body362_14 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 56#64]) body362_13

def originalData362 : Decl (BitVec 64) :=
.function { name := "acct_new", inline := false, exported := false, params := [("nonce", Flapjack.Shape.one),
  ("balance", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("code_hash", Flapjack.Shape.one)], body := body362_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData362 : Decl (BitVec 64) :=
.function { name := "acct_new", inline := false, exported := false, params := [("nonce", Flapjack.Shape.one),
  ("balance", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("code_hash", Flapjack.Shape.one)], body := body362_14, returnShape := (Flapjack.Shape.one) }
def original362 := Pancake.PanLang.declToHOL originalData362
def simplified362 := Pancake.PanLang.declToHOL simplifiedData362
end InitECandidate.Proofs.FrontendStages.Declarations
