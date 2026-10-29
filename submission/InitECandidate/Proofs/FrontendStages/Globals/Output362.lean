import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data362
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate339
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody362_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nonce")

def globalBody362_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "balance")

def globalBody362_2 : Prog (BitVec 64) :=
.seq globalBody362_0 globalBody362_1

def globalBody362_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 128#64]))

def globalBody362_4 : Prog (BitVec 64) :=
.seq globalBody362_2 globalBody362_3

def globalBody362_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_hash")

def globalBody362_6 : Prog (BitVec 64) :=
.seq globalBody362_4 globalBody362_5

def globalBody362_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody362_8 : Prog (BitVec 64) :=
.seq globalBody362_6 globalBody362_7

def globalBody362_9 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 56#64]) globalBody362_8

def globalData362 : Decl (BitVec 64) :=
.function { name := "acct_new", inline := false, exported := false, params := [("nonce", Flapjack.Shape.one),
  ("balance", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("code_hash", Flapjack.Shape.one)], body := globalBody362_9, returnShape := (Flapjack.Shape.one) }
def globalOutput362 := Pancake.PanLang.declToHOL globalData362
end InitECandidate.Proofs.FrontendStages.Declarations
