import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify327
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body343_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "pk") (Flapjack.Exp.const 4#64)

def body343_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "recover_transaction_public_key"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cid"),
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pk", Flapjack.Exp.const 1#64]]

def body343_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sender_address_from_public_key"
  [Flapjack.Exp.var Flapjack.VarKind.local "pk", Flapjack.Exp.var Flapjack.VarKind.local "out20"]

def body343_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body343_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body343_5 : Prog (BitVec 64) :=
.seq body343_3 body343_4

def body343_6 : Prog (BitVec 64) :=
.seq body343_2 body343_5

def body343_7 : Prog (BitVec 64) :=
.seq body343_1 body343_6

def body343_8 : Prog (BitVec 64) :=
.seq body343_0 body343_7

def body343_9 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 72#64]) body343_8

def body343_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body343_9

def body343_11 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_chain_id") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body343_10

def body343_12 : Prog (BitVec 64) :=
.seq body343_0 body343_1

def body343_13 : Prog (BitVec 64) :=
.seq body343_12 body343_2

def body343_14 : Prog (BitVec 64) :=
.seq body343_13 body343_3

def body343_15 : Prog (BitVec 64) :=
.seq body343_14 body343_4

def body343_16 : Prog (BitVec 64) :=
.decCall ("pk") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 72#64]) body343_15

def body343_17 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body343_16

def body343_18 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_chain_id") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body343_17

def originalData343 : Decl (BitVec 64) :=
.function { name := "recover_sender", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := body343_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData343 : Decl (BitVec 64) :=
.function { name := "recover_sender", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := body343_18, returnShape := (Flapjack.Shape.one) }
def original343 := Pancake.PanLang.declToHOL originalData343
def simplified343 := Pancake.PanLang.declToHOL simplifiedData343
end InitECandidate.Proofs.FrontendStages.Declarations
