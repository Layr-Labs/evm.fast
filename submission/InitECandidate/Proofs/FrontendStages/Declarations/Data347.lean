import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify331
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body347_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 66#64)

def body347_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body347_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 4294967295#64) (Flapjack.Exp.var Flapjack.VarKind.local "gas")) body347_0 body347_1

def body347_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 60#64)

def body347_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gas")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ic"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "ic")])) body347_3 body347_1

def body347_5 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 61#64)

def body347_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gas")
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "ic"))) body347_5 body347_1

def body347_7 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 62#64)

def body347_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 131072#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))) body347_7 body347_1

def body347_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) body347_8 body347_1

def body347_10 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 63#64)

def body347_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 16777216#64)
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ic"))) body347_10 body347_1

def body347_12 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 64#64)

def body347_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 16777216#64)
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "ic"))) body347_12 body347_1

def body347_14 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 65#64)

def body347_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "fits") (Flapjack.Exp.const 0#64)) body347_14 body347_1

def body347_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "nonce"))
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64])) body347_14 body347_1

def body347_17 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ic")

def body347_18 : Prog (BitVec 64) :=
.seq body347_16 body347_17

def body347_19 : Prog (BitVec 64) :=
.seq body347_15 body347_18

def body347_20 : Prog (BitVec 64) :=
.decCall ("fits") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "nonce"]) body347_19

def body347_21 : Prog (BitVec 64) :=
.dec ("nonce") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])) body347_20

def body347_22 : Prog (BitVec 64) :=
.seq body347_13 body347_21

def body347_23 : Prog (BitVec 64) :=
.seq body347_11 body347_22

def body347_24 : Prog (BitVec 64) :=
.seq body347_9 body347_23

def body347_25 : Prog (BitVec 64) :=
.seq body347_6 body347_24

def body347_26 : Prog (BitVec 64) :=
.seq body347_4 body347_25

def body347_27 : Prog (BitVec 64) :=
.seq body347_2 body347_26

def body347_28 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) body347_27

def body347_29 : Prog (BitVec 64) :=
.decCall ("ic") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_intrinsic_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body347_28

def body347_30 : Prog (BitVec 64) :=
.seq body347_2 body347_4

def body347_31 : Prog (BitVec 64) :=
.seq body347_30 body347_6

def body347_32 : Prog (BitVec 64) :=
.seq body347_31 body347_9

def body347_33 : Prog (BitVec 64) :=
.seq body347_32 body347_11

def body347_34 : Prog (BitVec 64) :=
.seq body347_33 body347_13

def body347_35 : Prog (BitVec 64) :=
.seq body347_15 body347_16

def body347_36 : Prog (BitVec 64) :=
.seq body347_35 body347_17

def body347_37 : Prog (BitVec 64) :=
.decCall ("fits") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "nonce"]) body347_36

def body347_38 : Prog (BitVec 64) :=
.dec ("nonce") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])) body347_37

def body347_39 : Prog (BitVec 64) :=
.seq body347_34 body347_38

def body347_40 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) body347_39

def body347_41 : Prog (BitVec 64) :=
.decCall ("ic") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_intrinsic_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body347_40

def originalData347 : Decl (BitVec 64) :=
.function { name := "validate_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := body347_29, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData347 : Decl (BitVec 64) :=
.function { name := "validate_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := body347_41, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original347 := Pancake.PanLang.declToHOL originalData347
def simplified347 := Pancake.PanLang.declToHOL simplifiedData347
end InitECandidate.Proofs.FrontendStages.Declarations
