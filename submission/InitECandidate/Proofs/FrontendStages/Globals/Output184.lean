import InitECandidate.Proofs.FrontendStages.Declarations.Data184
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody184_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody184_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody184_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "xs"))
  (Flapjack.Exp.const 1#64)) globalBody184_0 globalBody184_1

def globalBody184_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "xs"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "xs"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "xs"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "xs")])

def globalBody184_4 : Prog (BitVec 64) :=
.seq globalBody184_2 globalBody184_3

def globalBody184_5 : Prog (BitVec 64) :=
.decCall ("xs") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) globalBody184_4

def globalBody184_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "recid") (Flapjack.Exp.const 1#64),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) globalBody184_5 globalBody184_1

def globalBody184_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "xlt") (Flapjack.Exp.const 0#64)) globalBody184_0 globalBody184_1

def globalBody184_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "rhs"), none)) "fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "rhs", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody184_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "rhs"), none)) "fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rhs",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 7#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def globalBody184_10 : Prog (BitVec 64) :=
.seq globalBody184_8 globalBody184_9

def globalBody184_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sq") (Flapjack.Exp.const 0#64)) globalBody184_0 globalBody184_1

def globalBody184_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "fp_neg"
  [Flapjack.Exp.var Flapjack.VarKind.local "y0"]

def globalBody184_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "y0"), Flapjack.Exp.const 1#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "recid", Flapjack.Exp.const 1#64])) globalBody184_12 globalBody184_1

def globalBody184_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "x",
    Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody184_15 : Prog (BitVec 64) :=
.seq globalBody184_13 globalBody184_14

def globalBody184_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody184_17 : Prog (BitVec 64) :=
.seq globalBody184_15 globalBody184_16

def globalBody184_18 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "y0") globalBody184_17

def globalBody184_19 : Prog (BitVec 64) :=
.seq globalBody184_11 globalBody184_18

def globalBody184_20 : Prog (BitVec 64) :=
.decCall ("sq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "rhs"]) globalBody184_19

def globalBody184_21 : Prog (BitVec 64) :=
.decCall ("chk") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "y0"]) globalBody184_20

def globalBody184_22 : Prog (BitVec 64) :=
.decCall ("y0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqrt") ([Flapjack.Exp.var Flapjack.VarKind.local "rhs"]) globalBody184_21

def globalBody184_23 : Prog (BitVec 64) :=
.seq globalBody184_10 globalBody184_22

def globalBody184_24 : Prog (BitVec 64) :=
.decCall ("rhs") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) globalBody184_23

def globalBody184_25 : Prog (BitVec 64) :=
.seq globalBody184_7 globalBody184_24

def globalBody184_26 : Prog (BitVec 64) :=
.decCall ("xlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744069414583343#64, Flapjack.Exp.const 18446744073709551615#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744073709551615#64]]) globalBody184_25

def globalBody184_27 : Prog (BitVec 64) :=
.seq globalBody184_6 globalBody184_26

def globalBody184_28 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "r") globalBody184_27

def globalData184 : Decl (BitVec 64) :=
.function { name := "secp256k1_decompress_r", inline := false, exported := false, params := [("r", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("recid", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody184_28, returnShape := (Flapjack.Shape.one) }
def globalOutput184 := Pancake.PanLang.declToHOL globalData184
end InitECandidate.Proofs.FrontendStages.Declarations
