import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify240
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body256_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 0#64)

def body256_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def body256_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def body256_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "hash")

def body256_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def body256_5 : Prog (BitVec 64) :=
.seq body256_3 body256_4

def body256_6 : Prog (BitVec 64) :=
.seq body256_2 body256_5

def body256_7 : Prog (BitVec 64) :=
.seq body256_1 body256_6

def body256_8 : Prog (BitVec 64) :=
.seq body256_0 body256_7

def body256_9 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body256_8

def body256_10 : Prog (BitVec 64) :=
.seq body256_0 body256_1

def body256_11 : Prog (BitVec 64) :=
.seq body256_10 body256_2

def body256_12 : Prog (BitVec 64) :=
.seq body256_11 body256_3

def body256_13 : Prog (BitVec 64) :=
.seq body256_12 body256_4

def body256_14 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body256_13

def originalData256 : Decl (BitVec 64) :=
.function { name := "node_new_hashed", inline := false, exported := false, params := [("hash", Flapjack.Shape.one)], body := body256_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData256 : Decl (BitVec 64) :=
.function { name := "node_new_hashed", inline := false, exported := false, params := [("hash", Flapjack.Shape.one)], body := body256_14, returnShape := (Flapjack.Shape.one) }
def original256 := Pancake.PanLang.declToHOL originalData256
def simplified256 := Pancake.PanLang.declToHOL simplifiedData256
end InitECandidate.Proofs.FrontendStages.Declarations
