import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify328
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body344_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "pk") (Flapjack.Exp.const 4#64)

def body344_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "recover_transaction_public_key"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "chain_id",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pk", Flapjack.Exp.const 1#64]]

def body344_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sender_address_from_public_key"
  [Flapjack.Exp.var Flapjack.VarKind.local "pk", Flapjack.Exp.var Flapjack.VarKind.local "out20"]

def body344_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body344_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body344_5 : Prog (BitVec 64) :=
.seq body344_3 body344_4

def body344_6 : Prog (BitVec 64) :=
.seq body344_2 body344_5

def body344_7 : Prog (BitVec 64) :=
.seq body344_1 body344_6

def body344_8 : Prog (BitVec 64) :=
.seq body344_0 body344_7

def body344_9 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 72#64]) body344_8

def body344_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body344_9

def body344_11 : Prog (BitVec 64) :=
.seq body344_0 body344_1

def body344_12 : Prog (BitVec 64) :=
.seq body344_11 body344_2

def body344_13 : Prog (BitVec 64) :=
.seq body344_12 body344_3

def body344_14 : Prog (BitVec 64) :=
.seq body344_13 body344_4

def body344_15 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 72#64]) body344_14

def body344_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body344_15

def originalData344 : Decl (BitVec 64) :=
.function { name := "recover_sender_with_chain_id", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := body344_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData344 : Decl (BitVec 64) :=
.function { name := "recover_sender_with_chain_id", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := body344_16, returnShape := (Flapjack.Shape.one) }
def original344 := Pancake.PanLang.declToHOL originalData344
def simplified344 := Pancake.PanLang.declToHOL simplifiedData344
end InitECandidate.Proofs.FrontendStages.Declarations
