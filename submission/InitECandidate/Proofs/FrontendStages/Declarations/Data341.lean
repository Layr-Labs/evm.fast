import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify325
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body341_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body341_1 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 46#64)

def body341_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body341_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body341_1 body341_2

def body341_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body341_5 : Prog (BitVec 64) :=
.seq body341_3 body341_4

def body341_6 : Prog (BitVec 64) :=
.seq body341_0 body341_5

def body341_7 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("secp256k1_recover") ([Flapjack.Exp.var Flapjack.VarKind.local "h",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 320#64]),
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 352#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "recid", Flapjack.Exp.var Flapjack.VarKind.local "out64"]) body341_6

def body341_8 : Prog (BitVec 64) :=
.decCall ("recid") (Flapjack.Shape.one) ("signature_recovery_parameters") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "chain_id",
  Flapjack.Exp.var Flapjack.VarKind.local "h"]) body341_7

def body341_9 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body341_8

def body341_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body341_9

def body341_11 : Prog (BitVec 64) :=
.seq body341_0 body341_3

def body341_12 : Prog (BitVec 64) :=
.seq body341_11 body341_4

def body341_13 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("secp256k1_recover") ([Flapjack.Exp.var Flapjack.VarKind.local "h",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 320#64]),
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 352#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "recid", Flapjack.Exp.var Flapjack.VarKind.local "out64"]) body341_12

def body341_14 : Prog (BitVec 64) :=
.decCall ("recid") (Flapjack.Shape.one) ("signature_recovery_parameters") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "chain_id",
  Flapjack.Exp.var Flapjack.VarKind.local "h"]) body341_13

def body341_15 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body341_14

def body341_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body341_15

def originalData341 : Decl (BitVec 64) :=
.function { name := "recover_transaction_public_key", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one), ("out64", Flapjack.Shape.one)], body := body341_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData341 : Decl (BitVec 64) :=
.function { name := "recover_transaction_public_key", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one), ("out64", Flapjack.Shape.one)], body := body341_16, returnShape := (Flapjack.Shape.one) }
def original341 := Pancake.PanLang.declToHOL originalData341
def simplified341 := Pancake.PanLang.declToHOL simplifiedData341
end InitECandidate.Proofs.FrontendStages.Declarations
