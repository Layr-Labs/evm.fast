import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify407
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body423_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le64"
  [Flapjack.Exp.var Flapjack.VarKind.local "kb", Flapjack.Exp.var Flapjack.VarKind.global "bal_index"]

def body423_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "kb", Flapjack.Exp.const 8#64],
    Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 20#64]

def body423_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"))

def body423_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body423_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) body423_2 body423_3

def body423_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 80#64]

def body423_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 48#64],
    Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash", Flapjack.Exp.const 32#64]

def body423_7 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "rec") (Flapjack.Exp.const 1#64)

def body423_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 0#64]))

def body423_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 8#64]))

def body423_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 48#64],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.const 32#64]

def body423_11 : Prog (BitVec 64) :=
.seq body423_9 body423_10

def body423_12 : Prog (BitVec 64) :=
.seq body423_8 body423_11

def body423_13 : Prog (BitVec 64) :=
.seq body423_7 body423_12

def body423_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "pre") (Flapjack.Exp.const 1#64)) body423_13 body423_3

def body423_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.global "bal_idx_accts", Flapjack.Exp.var Flapjack.VarKind.local "kb",
    Flapjack.Exp.var Flapjack.VarKind.local "rec"]

def body423_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "rec")

def body423_17 : Prog (BitVec 64) :=
.seq body423_15 body423_16

def body423_18 : Prog (BitVec 64) :=
.seq body423_1 body423_17

def body423_19 : Prog (BitVec 64) :=
.seq body423_0 body423_18

def body423_20 : Prog (BitVec 64) :=
.seq body423_14 body423_19

def body423_21 : Prog (BitVec 64) :=
.seq body423_6 body423_20

def body423_22 : Prog (BitVec 64) :=
.seq body423_5 body423_21

def body423_23 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 80#64]) body423_22

def body423_24 : Prog (BitVec 64) :=
.decCall ("pre") (Flapjack.Shape.one) ("get_pre_tx_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body423_23

def body423_25 : Prog (BitVec 64) :=
.seq body423_4 body423_24

def body423_26 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_idx_accts", Flapjack.Exp.var Flapjack.VarKind.local "kb"]) body423_25

def body423_27 : Prog (BitVec 64) :=
.seq body423_1 body423_26

def body423_28 : Prog (BitVec 64) :=
.seq body423_0 body423_27

def body423_29 : Prog (BitVec 64) :=
.dec ("kb") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "bal_key_buf") body423_28

def body423_30 : Prog (BitVec 64) :=
.seq body423_0 body423_1

def body423_31 : Prog (BitVec 64) :=
.seq body423_5 body423_6

def body423_32 : Prog (BitVec 64) :=
.seq body423_7 body423_8

def body423_33 : Prog (BitVec 64) :=
.seq body423_32 body423_9

def body423_34 : Prog (BitVec 64) :=
.seq body423_33 body423_10

def body423_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "pre") (Flapjack.Exp.const 1#64)) body423_34 body423_3

def body423_36 : Prog (BitVec 64) :=
.seq body423_31 body423_35

def body423_37 : Prog (BitVec 64) :=
.seq body423_36 body423_0

def body423_38 : Prog (BitVec 64) :=
.seq body423_37 body423_1

def body423_39 : Prog (BitVec 64) :=
.seq body423_38 body423_15

def body423_40 : Prog (BitVec 64) :=
.seq body423_39 body423_16

def body423_41 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 80#64]) body423_40

def body423_42 : Prog (BitVec 64) :=
.decCall ("pre") (Flapjack.Shape.one) ("get_pre_tx_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body423_41

def body423_43 : Prog (BitVec 64) :=
.seq body423_4 body423_42

def body423_44 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_idx_accts", Flapjack.Exp.var Flapjack.VarKind.local "kb"]) body423_43

def body423_45 : Prog (BitVec 64) :=
.seq body423_30 body423_44

def body423_46 : Prog (BitVec 64) :=
.dec ("kb") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "bal_key_buf") body423_45

def originalData423 : Decl (BitVec 64) :=
.function { name := "idx_start_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body423_29, returnShape := (Flapjack.Shape.one) }
def simplifiedData423 : Decl (BitVec 64) :=
.function { name := "idx_start_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body423_46, returnShape := (Flapjack.Shape.one) }
def original423 := Pancake.PanLang.declToHOL originalData423
def simplified423 := Pancake.PanLang.declToHOL simplifiedData423
end InitECandidate.Proofs.FrontendStages.Declarations
