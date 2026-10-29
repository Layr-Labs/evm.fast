import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify777
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body793_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "v7", Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body793_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v7", Flapjack.Exp.var Flapjack.VarKind.local "v7",
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body793_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body793_3 : Prog (BitVec 64) :=
.seq body793_1 body793_2

def body793_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 6#64)) body793_3

def body793_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp1", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "v7"]

def body793_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp2", Flapjack.Exp.var Flapjack.VarKind.local "v7",
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body793_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "temp2", Flapjack.Exp.var Flapjack.VarKind.local "temp1",
    Flapjack.Exp.var Flapjack.VarKind.local "temp2"]

def body793_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_pow"
  [Flapjack.Exp.var Flapjack.VarKind.local "gamma", Flapjack.Exp.var Flapjack.VarKind.local "temp2",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1528#64],
    Flapjack.Exp.const 12#64]

def body793_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "gamma", Flapjack.Exp.var Flapjack.VarKind.local "gamma",
    Flapjack.Exp.var Flapjack.VarKind.local "temp1"]

def body793_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "gamma"]

def body793_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body793_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "cand",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 5216#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 96#64]],
    Flapjack.Exp.var Flapjack.VarKind.local "gamma"]

def body793_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "cand"]

def body793_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "chk",
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body793_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "chk",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body793_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "valid" (Flapjack.Exp.const 1#64)

def body793_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "cand"]

def body793_18 : Prog (BitVec 64) :=
.seq body793_16 body793_17

def body793_19 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body793_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "valid") (Flapjack.Exp.const 0#64))]) body793_18 body793_19

def body793_21 : Prog (BitVec 64) :=
.seq body793_20 body793_2

def body793_22 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("fp2_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "chk"]) body793_21

def body793_23 : Prog (BitVec 64) :=
.seq body793_15 body793_22

def body793_24 : Prog (BitVec 64) :=
.seq body793_14 body793_23

def body793_25 : Prog (BitVec 64) :=
.seq body793_13 body793_24

def body793_26 : Prog (BitVec 64) :=
.seq body793_12 body793_25

def body793_27 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 4#64)) body793_26

def body793_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body793_29 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "valid")

def body793_30 : Prog (BitVec 64) :=
.seq body793_28 body793_29

def body793_31 : Prog (BitVec 64) :=
.seq body793_27 body793_30

def body793_32 : Prog (BitVec 64) :=
.seq body793_11 body793_31

def body793_33 : Prog (BitVec 64) :=
.seq body793_10 body793_32

def body793_34 : Prog (BitVec 64) :=
.dec ("valid") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body793_33

def body793_35 : Prog (BitVec 64) :=
.seq body793_9 body793_34

def body793_36 : Prog (BitVec 64) :=
.seq body793_8 body793_35

def body793_37 : Prog (BitVec 64) :=
.seq body793_7 body793_36

def body793_38 : Prog (BitVec 64) :=
.seq body793_6 body793_37

def body793_39 : Prog (BitVec 64) :=
.seq body793_5 body793_38

def body793_40 : Prog (BitVec 64) :=
.seq body793_4 body793_39

def body793_41 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body793_40

def body793_42 : Prog (BitVec 64) :=
.seq body793_0 body793_41

def body793_43 : Prog (BitVec 64) :=
.dec ("chk") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) body793_42

def body793_44 : Prog (BitVec 64) :=
.dec ("cand") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) body793_43

def body793_45 : Prog (BitVec 64) :=
.dec ("gamma") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body793_44

def body793_46 : Prog (BitVec 64) :=
.dec ("temp2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) body793_45

def body793_47 : Prog (BitVec 64) :=
.dec ("temp1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) body793_46

def body793_48 : Prog (BitVec 64) :=
.dec ("v7") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body793_47

def body793_49 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 6#64]]) body793_48

def body793_50 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body793_49

def body793_51 : Prog (BitVec 64) :=
.seq body793_4 body793_5

def body793_52 : Prog (BitVec 64) :=
.seq body793_51 body793_6

def body793_53 : Prog (BitVec 64) :=
.seq body793_52 body793_7

def body793_54 : Prog (BitVec 64) :=
.seq body793_53 body793_8

def body793_55 : Prog (BitVec 64) :=
.seq body793_54 body793_9

def body793_56 : Prog (BitVec 64) :=
.seq body793_10 body793_11

def body793_57 : Prog (BitVec 64) :=
.seq body793_12 body793_13

def body793_58 : Prog (BitVec 64) :=
.seq body793_57 body793_14

def body793_59 : Prog (BitVec 64) :=
.seq body793_58 body793_15

def body793_60 : Prog (BitVec 64) :=
.seq body793_59 body793_22

def body793_61 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 4#64)) body793_60

def body793_62 : Prog (BitVec 64) :=
.seq body793_56 body793_61

def body793_63 : Prog (BitVec 64) :=
.seq body793_62 body793_28

def body793_64 : Prog (BitVec 64) :=
.seq body793_63 body793_29

def body793_65 : Prog (BitVec 64) :=
.dec ("valid") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body793_64

def body793_66 : Prog (BitVec 64) :=
.seq body793_55 body793_65

def body793_67 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body793_66

def body793_68 : Prog (BitVec 64) :=
.seq body793_0 body793_67

def body793_69 : Prog (BitVec 64) :=
.dec ("chk") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) body793_68

def body793_70 : Prog (BitVec 64) :=
.dec ("cand") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) body793_69

def body793_71 : Prog (BitVec 64) :=
.dec ("gamma") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body793_70

def body793_72 : Prog (BitVec 64) :=
.dec ("temp2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) body793_71

def body793_73 : Prog (BitVec 64) :=
.dec ("temp1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) body793_72

def body793_74 : Prog (BitVec 64) :=
.dec ("v7") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body793_73

def body793_75 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 6#64]]) body793_74

def body793_76 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body793_75

def originalData793 : Decl (BitVec 64) :=
.function { name := "swu_sqrt_division_fp2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("u", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := body793_50, returnShape := (Flapjack.Shape.one) }
def simplifiedData793 : Decl (BitVec 64) :=
.function { name := "swu_sqrt_division_fp2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("u", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := body793_76, returnShape := (Flapjack.Shape.one) }
def original793 := Pancake.PanLang.declToHOL originalData793
def simplified793 := Pancake.PanLang.declToHOL simplifiedData793
end InitECandidate.Proofs.FrontendStages.Declarations
