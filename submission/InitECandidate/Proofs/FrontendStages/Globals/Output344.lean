import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data344
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate328
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody344_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "pk") (Flapjack.Exp.const 4#64)

def globalBody344_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "recover_transaction_public_key"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "chain_id",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pk", Flapjack.Exp.const 1#64]]

def globalBody344_2 : Prog (BitVec 64) :=
.seq globalBody344_0 globalBody344_1

def globalBody344_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sender_address_from_public_key"
  [Flapjack.Exp.var Flapjack.VarKind.local "pk", Flapjack.Exp.var Flapjack.VarKind.local "out20"]

def globalBody344_4 : Prog (BitVec 64) :=
.seq globalBody344_2 globalBody344_3

def globalBody344_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody344_6 : Prog (BitVec 64) :=
.seq globalBody344_4 globalBody344_5

def globalBody344_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody344_8 : Prog (BitVec 64) :=
.seq globalBody344_6 globalBody344_7

def globalBody344_9 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 72#64]) globalBody344_8

def globalBody344_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody344_9

def globalData344 : Decl (BitVec 64) :=
.function { name := "recover_sender_with_chain_id", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := globalBody344_10, returnShape := (Flapjack.Shape.one) }
def globalOutput344 := Pancake.PanLang.declToHOL globalData344
end InitECandidate.Proofs.FrontendStages.Declarations
