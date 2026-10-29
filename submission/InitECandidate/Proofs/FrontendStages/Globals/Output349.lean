import InitECandidate.Proofs.FrontendStages.Declarations.Data349
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody349_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 66#64)

def globalBody349_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody349_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 4294967295#64) (Flapjack.Exp.var Flapjack.VarKind.local "gas")) globalBody349_0 globalBody349_1

def globalBody349_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 60#64)

def globalBody349_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gas")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ic"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "ic")])) globalBody349_3 globalBody349_1

def globalBody349_5 : Prog (BitVec 64) :=
.seq globalBody349_2 globalBody349_4

def globalBody349_6 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 61#64)

def globalBody349_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gas")
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "ic"))) globalBody349_6 globalBody349_1

def globalBody349_8 : Prog (BitVec 64) :=
.seq globalBody349_5 globalBody349_7

def globalBody349_9 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 62#64)

def globalBody349_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 131072#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]))) globalBody349_9 globalBody349_1

def globalBody349_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64]))
  (Flapjack.Exp.const 0#64)) globalBody349_10 globalBody349_1

def globalBody349_12 : Prog (BitVec 64) :=
.seq globalBody349_8 globalBody349_11

def globalBody349_13 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 63#64)

def globalBody349_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 16777216#64)
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ic"))) globalBody349_13 globalBody349_1

def globalBody349_15 : Prog (BitVec 64) :=
.seq globalBody349_12 globalBody349_14

def globalBody349_16 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 64#64)

def globalBody349_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 16777216#64)
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "ic"))) globalBody349_16 globalBody349_1

def globalBody349_18 : Prog (BitVec 64) :=
.seq globalBody349_15 globalBody349_17

def globalBody349_19 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 65#64)

def globalBody349_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "fits") (Flapjack.Exp.const 0#64)) globalBody349_19 globalBody349_1

def globalBody349_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "nonce"))
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64])) globalBody349_19 globalBody349_1

def globalBody349_22 : Prog (BitVec 64) :=
.seq globalBody349_20 globalBody349_21

def globalBody349_23 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ic")

def globalBody349_24 : Prog (BitVec 64) :=
.seq globalBody349_22 globalBody349_23

def globalBody349_25 : Prog (BitVec 64) :=
.decCall ("fits") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "nonce"]) globalBody349_24

def globalBody349_26 : Prog (BitVec 64) :=
.dec ("nonce") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])) globalBody349_25

def globalBody349_27 : Prog (BitVec 64) :=
.seq globalBody349_18 globalBody349_26

def globalBody349_28 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) globalBody349_27

def globalBody349_29 : Prog (BitVec 64) :=
.decCall ("ic") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_intrinsic_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody349_28

def globalData349 : Decl (BitVec 64) := .function { name := "validate_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := globalBody349_29, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput349 := Pancake.PanLang.declToHOL globalData349
end InitECandidate.Proofs.FrontendStages.Declarations
