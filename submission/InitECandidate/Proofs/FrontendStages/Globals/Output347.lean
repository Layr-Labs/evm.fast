import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data347
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate331
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody347_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 66#64)

def globalBody347_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody347_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 4294967295#64) (Flapjack.Exp.var Flapjack.VarKind.local "gas")) globalBody347_0 globalBody347_1

def globalBody347_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 60#64)

def globalBody347_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gas")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ic"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "ic")])) globalBody347_3 globalBody347_1

def globalBody347_5 : Prog (BitVec 64) :=
.seq globalBody347_2 globalBody347_4

def globalBody347_6 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 61#64)

def globalBody347_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gas")
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "ic"))) globalBody347_6 globalBody347_1

def globalBody347_8 : Prog (BitVec 64) :=
.seq globalBody347_5 globalBody347_7

def globalBody347_9 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 62#64)

def globalBody347_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 131072#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))) globalBody347_9 globalBody347_1

def globalBody347_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) globalBody347_10 globalBody347_1

def globalBody347_12 : Prog (BitVec 64) :=
.seq globalBody347_8 globalBody347_11

def globalBody347_13 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 63#64)

def globalBody347_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 16777216#64)
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ic"))) globalBody347_13 globalBody347_1

def globalBody347_15 : Prog (BitVec 64) :=
.seq globalBody347_12 globalBody347_14

def globalBody347_16 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 64#64)

def globalBody347_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 16777216#64)
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "ic"))) globalBody347_16 globalBody347_1

def globalBody347_18 : Prog (BitVec 64) :=
.seq globalBody347_15 globalBody347_17

def globalBody347_19 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 65#64)

def globalBody347_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "fits") (Flapjack.Exp.const 0#64)) globalBody347_19 globalBody347_1

def globalBody347_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "nonce"))
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64])) globalBody347_19 globalBody347_1

def globalBody347_22 : Prog (BitVec 64) :=
.seq globalBody347_20 globalBody347_21

def globalBody347_23 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ic")

def globalBody347_24 : Prog (BitVec 64) :=
.seq globalBody347_22 globalBody347_23

def globalBody347_25 : Prog (BitVec 64) :=
.decCall ("fits") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "nonce"]) globalBody347_24

def globalBody347_26 : Prog (BitVec 64) :=
.dec ("nonce") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])) globalBody347_25

def globalBody347_27 : Prog (BitVec 64) :=
.seq globalBody347_18 globalBody347_26

def globalBody347_28 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) globalBody347_27

def globalBody347_29 : Prog (BitVec 64) :=
.decCall ("ic") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_intrinsic_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody347_28

def globalData347 : Decl (BitVec 64) :=
.function { name := "validate_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := globalBody347_29, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput347 := Pancake.PanLang.declToHOL globalData347
end InitECandidate.Proofs.FrontendStages.Declarations
