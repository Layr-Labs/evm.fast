import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data178
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate162
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody178_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody178_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody178_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "xs"))
  (Flapjack.Exp.const 1#64)) globalBody178_0 globalBody178_1

def globalBody178_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "xs"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "xs"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "xs"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "xs")])

def globalBody178_4 : Prog (BitVec 64) :=
.seq globalBody178_2 globalBody178_3

def globalBody178_5 : Prog (BitVec 64) :=
.decCall ("xs") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) globalBody178_4

def globalBody178_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "recid") (Flapjack.Exp.const 1#64),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) globalBody178_5 globalBody178_1

def globalBody178_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "xlt") (Flapjack.Exp.const 0#64)) globalBody178_0 globalBody178_1

def globalBody178_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "rhs"), none)) "fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "rhs", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody178_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "rhs"), none)) "fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rhs",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 7#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def globalBody178_10 : Prog (BitVec 64) :=
.seq globalBody178_8 globalBody178_9

def globalBody178_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sq") (Flapjack.Exp.const 0#64)) globalBody178_0 globalBody178_1

def globalBody178_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "fp_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "y0"]

def globalBody178_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "y0"), Flapjack.Exp.const 1#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "recid", Flapjack.Exp.const 1#64])) globalBody178_12 globalBody178_1

def globalBody178_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "x",
    Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody178_15 : Prog (BitVec 64) :=
.seq globalBody178_13 globalBody178_14

def globalBody178_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody178_17 : Prog (BitVec 64) :=
.seq globalBody178_15 globalBody178_16

def globalBody178_18 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "y0") globalBody178_17

def globalBody178_19 : Prog (BitVec 64) :=
.seq globalBody178_11 globalBody178_18

def globalBody178_20 : Prog (BitVec 64) :=
.decCall ("sq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "rhs"]) globalBody178_19

def globalBody178_21 : Prog (BitVec 64) :=
.decCall ("chk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "y0"]) globalBody178_20

def globalBody178_22 : Prog (BitVec 64) :=
.decCall ("y0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqrt") ([Flapjack.Exp.var Flapjack.VarKind.local "rhs"]) globalBody178_21

def globalBody178_23 : Prog (BitVec 64) :=
.seq globalBody178_10 globalBody178_22

def globalBody178_24 : Prog (BitVec 64) :=
.decCall ("rhs") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) globalBody178_23

def globalBody178_25 : Prog (BitVec 64) :=
.seq globalBody178_7 globalBody178_24

def globalBody178_26 : Prog (BitVec 64) :=
.decCall ("xlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744069414583343#64, Flapjack.Exp.const 18446744073709551615#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744073709551615#64]]) globalBody178_25

def globalBody178_27 : Prog (BitVec 64) :=
.seq globalBody178_6 globalBody178_26

def globalBody178_28 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "r") globalBody178_27

def globalData178 : Decl (BitVec 64) :=
.function { name := "secp256k1_decompress_r", inline := false, exported := false, params := [("r", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("recid", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody178_28, returnShape := (Flapjack.Shape.one) }
def globalOutput178 := Pancake.PanLang.declToHOL globalData178
end InitECandidate.Proofs.FrontendStages.Declarations
