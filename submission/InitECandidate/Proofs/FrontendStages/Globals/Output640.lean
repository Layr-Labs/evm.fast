import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data640
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate624
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody640_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody640_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody640_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "zz") (Flapjack.Exp.const 1#64)) globalBody640_0 globalBody640_1

def globalBody640_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "p256_set_infinity" [Flapjack.Exp.var Flapjack.VarKind.local "pt"]

def globalBody640_4 : Prog (BitVec 64) :=
.seq globalBody640_3 globalBody640_0

def globalBody640_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "yz") (Flapjack.Exp.const 1#64)) globalBody640_4 globalBody640_1

def globalBody640_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "alpha"), none)) "p256_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "alpha2", Flapjack.Exp.var Flapjack.VarKind.local "alpha"]

def globalBody640_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "b4"), none)) "p256_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "b4", Flapjack.Exp.var Flapjack.VarKind.local "b4"]

def globalBody640_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x3"), none)) "p256_fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "x3", Flapjack.Exp.var Flapjack.VarKind.local "b8"]

def globalBody640_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z3"), none)) "p256_fp_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "z3"]

def globalBody640_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z3"), none)) "p256_fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "z3", Flapjack.Exp.var Flapjack.VarKind.local "gamma"]

def globalBody640_11 : Prog (BitVec 64) :=
.seq globalBody640_9 globalBody640_10

def globalBody640_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "z3"), none)) "p256_fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "z3", Flapjack.Exp.var Flapjack.VarKind.local "delta"]

def globalBody640_13 : Prog (BitVec 64) :=
.seq globalBody640_11 globalBody640_12

def globalBody640_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y3"), none)) "p256_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "alpha", Flapjack.Exp.var Flapjack.VarKind.local "y3"]

def globalBody640_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "g2"), none)) "p256_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "g2", Flapjack.Exp.var Flapjack.VarKind.local "g2"]

def globalBody640_16 : Prog (BitVec 64) :=
.seq globalBody640_15 globalBody640_15

def globalBody640_17 : Prog (BitVec 64) :=
.seq globalBody640_16 globalBody640_15

def globalBody640_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y3"), none)) "p256_fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "y3", Flapjack.Exp.var Flapjack.VarKind.local "g2"]

def globalBody640_19 : Prog (BitVec 64) :=
.seq globalBody640_17 globalBody640_18

def globalBody640_20 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pt") (Flapjack.Exp.var Flapjack.VarKind.local "x3")

def globalBody640_21 : Prog (BitVec 64) :=
.seq globalBody640_19 globalBody640_20

def globalBody640_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y3")

def globalBody640_23 : Prog (BitVec 64) :=
.seq globalBody640_21 globalBody640_22

def globalBody640_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "z3")

def globalBody640_25 : Prog (BitVec 64) :=
.seq globalBody640_23 globalBody640_24

def globalBody640_26 : Prog (BitVec 64) :=
.seq globalBody640_25 globalBody640_0

def globalBody640_27 : Prog (BitVec 64) :=
.decCall ("g2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "gamma"]) globalBody640_26

def globalBody640_28 : Prog (BitVec 64) :=
.seq globalBody640_14 globalBody640_27

def globalBody640_29 : Prog (BitVec 64) :=
.decCall ("y3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "b4", Flapjack.Exp.var Flapjack.VarKind.local "x3"]) globalBody640_28

def globalBody640_30 : Prog (BitVec 64) :=
.seq globalBody640_13 globalBody640_29

def globalBody640_31 : Prog (BitVec 64) :=
.decCall ("z3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "z"]) globalBody640_30

def globalBody640_32 : Prog (BitVec 64) :=
.seq globalBody640_8 globalBody640_31

def globalBody640_33 : Prog (BitVec 64) :=
.decCall ("b8") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "b4", Flapjack.Exp.var Flapjack.VarKind.local "b4"]) globalBody640_32

def globalBody640_34 : Prog (BitVec 64) :=
.seq globalBody640_7 globalBody640_33

def globalBody640_35 : Prog (BitVec 64) :=
.decCall ("b4") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "beta", Flapjack.Exp.var Flapjack.VarKind.local "beta"]) globalBody640_34

def globalBody640_36 : Prog (BitVec 64) :=
.decCall ("x3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "alpha"]) globalBody640_35

def globalBody640_37 : Prog (BitVec 64) :=
.seq globalBody640_6 globalBody640_36

def globalBody640_38 : Prog (BitVec 64) :=
.decCall ("alpha2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "alpha", Flapjack.Exp.var Flapjack.VarKind.local "alpha"]) globalBody640_37

def globalBody640_39 : Prog (BitVec 64) :=
.decCall ("alpha") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "t2"]) globalBody640_38

def globalBody640_40 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "delta"]) globalBody640_39

def globalBody640_41 : Prog (BitVec 64) :=
.decCall ("t1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "delta"]) globalBody640_40

def globalBody640_42 : Prog (BitVec 64) :=
.decCall ("beta") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "gamma"]) globalBody640_41

def globalBody640_43 : Prog (BitVec 64) :=
.decCall ("gamma") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) globalBody640_42

def globalBody640_44 : Prog (BitVec 64) :=
.decCall ("delta") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) globalBody640_43

def globalBody640_45 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pt")) globalBody640_44

def globalBody640_46 : Prog (BitVec 64) :=
.seq globalBody640_5 globalBody640_45

def globalBody640_47 : Prog (BitVec 64) :=
.decCall ("yz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) globalBody640_46

def globalBody640_48 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])) globalBody640_47

def globalBody640_49 : Prog (BitVec 64) :=
.seq globalBody640_2 globalBody640_48

def globalBody640_50 : Prog (BitVec 64) :=
.decCall ("zz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) globalBody640_49

def globalBody640_51 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])) globalBody640_50

def globalData640 : Decl (BitVec 64) :=
.function { name := "p256_ec_double", inline := false, exported := false, params := [("pt", Flapjack.Shape.one)], body := globalBody640_51, returnShape := (Flapjack.Shape.one) }
def globalOutput640 := Pancake.PanLang.declToHOL globalData640
end InitECandidate.Proofs.FrontendStages.Declarations
