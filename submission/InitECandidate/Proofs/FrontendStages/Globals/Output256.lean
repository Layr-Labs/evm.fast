import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data256
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate233
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody256_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 0#64)

def globalBody256_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def globalBody256_2 : Prog (BitVec 64) :=
.seq globalBody256_0 globalBody256_1

def globalBody256_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def globalBody256_4 : Prog (BitVec 64) :=
.seq globalBody256_2 globalBody256_3

def globalBody256_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "hash")

def globalBody256_6 : Prog (BitVec 64) :=
.seq globalBody256_4 globalBody256_5

def globalBody256_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def globalBody256_8 : Prog (BitVec 64) :=
.seq globalBody256_6 globalBody256_7

def globalBody256_9 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody256_8

def globalData256 : Decl (BitVec 64) :=
.function { name := "node_new_hashed", inline := false, exported := false, params := [("hash", Flapjack.Shape.one)], body := globalBody256_9, returnShape := (Flapjack.Shape.one) }
def globalOutput256 := Pancake.PanLang.declToHOL globalData256
end InitECandidate.Proofs.FrontendStages.Declarations
