import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify279
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body295_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body295_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch",
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "balance")]

def body295_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch", Flapjack.Exp.const 8#64],
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "balance")]

def body295_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch", Flapjack.Exp.const 16#64],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "balance")]

def body295_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch", Flapjack.Exp.const 24#64],
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "balance")]

def body295_5 : Prog (BitVec 64) :=
Flapjack.Prog.break

def body295_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body295_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch", Flapjack.Exp.var Flapjack.VarKind.local "z"]))
  (Flapjack.Exp.const 0#64)) body295_5 body295_6

def body295_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "z"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "z", Flapjack.Exp.const 1#64])

def body295_9 : Prog (BitVec 64) :=
.seq body295_7 body295_8

def body295_10 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 32#64)) body295_9

def body295_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "wb"])

def body295_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "wsl"])

def body295_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "wc"])

def body295_14 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.const 248#64)

def body295_15 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.const 2#64])

def body295_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "off")

def body295_17 : Prog (BitVec 64) :=
.seq body295_15 body295_16

def body295_18 : Prog (BitVec 64) :=
.seq body295_14 body295_17

def body295_19 : Prog (BitVec 64) :=
.seq body295_13 body295_18

def body295_20 : Prog (BitVec 64) :=
.decCall ("wc") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.var Flapjack.VarKind.local "code_hash", Flapjack.Exp.const 32#64]) body295_19

def body295_21 : Prog (BitVec 64) :=
.seq body295_12 body295_20

def body295_22 : Prog (BitVec 64) :=
.decCall ("wsl") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.var Flapjack.VarKind.local "storage_root", Flapjack.Exp.const 32#64]) body295_21

def body295_23 : Prog (BitVec 64) :=
.seq body295_11 body295_22

def body295_24 : Prog (BitVec 64) :=
.decCall ("wb") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch", Flapjack.Exp.var Flapjack.VarKind.local "z"],
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "z"]]) body295_23

def body295_25 : Prog (BitVec 64) :=
.seq body295_10 body295_24

def body295_26 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body295_25

def body295_27 : Prog (BitVec 64) :=
.seq body295_4 body295_26

def body295_28 : Prog (BitVec 64) :=
.seq body295_3 body295_27

def body295_29 : Prog (BitVec 64) :=
.seq body295_2 body295_28

def body295_30 : Prog (BitVec 64) :=
.seq body295_1 body295_29

def body295_31 : Prog (BitVec 64) :=
.seq body295_0 body295_30

def body295_32 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_word") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.var Flapjack.VarKind.local "nonce"]) body295_31

def body295_33 : Prog (BitVec 64) :=
.dec ("off") (Flapjack.Shape.one) (Flapjack.Exp.const 2#64) body295_32

def body295_34 : Prog (BitVec 64) :=
.seq body295_0 body295_1

def body295_35 : Prog (BitVec 64) :=
.seq body295_34 body295_2

def body295_36 : Prog (BitVec 64) :=
.seq body295_35 body295_3

def body295_37 : Prog (BitVec 64) :=
.seq body295_36 body295_4

def body295_38 : Prog (BitVec 64) :=
.seq body295_13 body295_14

def body295_39 : Prog (BitVec 64) :=
.seq body295_38 body295_15

def body295_40 : Prog (BitVec 64) :=
.seq body295_39 body295_16

def body295_41 : Prog (BitVec 64) :=
.decCall ("wc") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.var Flapjack.VarKind.local "code_hash", Flapjack.Exp.const 32#64]) body295_40

def body295_42 : Prog (BitVec 64) :=
.seq body295_12 body295_41

def body295_43 : Prog (BitVec 64) :=
.decCall ("wsl") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.var Flapjack.VarKind.local "storage_root", Flapjack.Exp.const 32#64]) body295_42

def body295_44 : Prog (BitVec 64) :=
.seq body295_11 body295_43

def body295_45 : Prog (BitVec 64) :=
.decCall ("wb") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch", Flapjack.Exp.var Flapjack.VarKind.local "z"],
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "z"]]) body295_44

def body295_46 : Prog (BitVec 64) :=
.seq body295_10 body295_45

def body295_47 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body295_46

def body295_48 : Prog (BitVec 64) :=
.seq body295_37 body295_47

def body295_49 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_word") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.var Flapjack.VarKind.local "nonce"]) body295_48

def body295_50 : Prog (BitVec 64) :=
.dec ("off") (Flapjack.Shape.one) (Flapjack.Exp.const 2#64) body295_49

def originalData295 : Decl (BitVec 64) :=
.function { name := "encode_account", inline := false, exported := false, params := [("nonce", Flapjack.Shape.one),
  ("balance", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("storage_root", Flapjack.Shape.one), ("code_hash", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body295_33, returnShape := (Flapjack.Shape.one) }
def simplifiedData295 : Decl (BitVec 64) :=
.function { name := "encode_account", inline := false, exported := false, params := [("nonce", Flapjack.Shape.one),
  ("balance", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("storage_root", Flapjack.Shape.one), ("code_hash", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body295_50, returnShape := (Flapjack.Shape.one) }
def original295 := Pancake.PanLang.declToHOL originalData295
def simplified295 := Pancake.PanLang.declToHOL simplifiedData295
end InitECandidate.Proofs.FrontendStages.Declarations
