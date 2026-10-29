import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data692
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate676
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody692_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_init" []

def globalBody692_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "anum"]

def globalBody692_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "aden"]

def globalBody692_3 : Prog (BitVec 64) :=
.seq globalBody692_1 globalBody692_2

def globalBody692_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody692_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2#64)

def globalBody692_6 : Prog (BitVec 64) :=
.seq globalBody692_4 globalBody692_5

def globalBody692_7 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody692_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e1") (Flapjack.Exp.const 0#64)) globalBody692_6 globalBody692_7

def globalBody692_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e2") (Flapjack.Exp.const 0#64)) globalBody692_6 globalBody692_7

def globalBody692_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_mul"
  [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "g1",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 4891460686036598785#64, Flapjack.Exp.const 2896914383306846353#64,
        Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]

def globalBody692_11 : Prog (BitVec 64) :=
.seq globalBody692_9 globalBody692_10

def globalBody692_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i1") (Flapjack.Exp.const 0#64)) globalBody692_6 globalBody692_7

def globalBody692_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_mul"
  [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "g2",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 4891460686036598785#64, Flapjack.Exp.const 2896914383306846353#64,
        Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]

def globalBody692_14 : Prog (BitVec 64) :=
.seq globalBody692_12 globalBody692_13

def globalBody692_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i2") (Flapjack.Exp.const 0#64)) globalBody692_6 globalBody692_7

def globalBody692_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_twist"
  [Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.var Flapjack.VarKind.local "g2"]

def globalBody692_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_cast"
  [Flapjack.Exp.var Flapjack.VarKind.local "P", Flapjack.Exp.var Flapjack.VarKind.local "g1"]

def globalBody692_18 : Prog (BitVec 64) :=
.seq globalBody692_16 globalBody692_17

def globalBody692_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_miller_raw"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.var Flapjack.VarKind.local "fden",
    Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.var Flapjack.VarKind.local "P"]

def globalBody692_20 : Prog (BitVec 64) :=
.seq globalBody692_18 globalBody692_19

def globalBody692_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "anum", Flapjack.Exp.var Flapjack.VarKind.local "anum",
    Flapjack.Exp.var Flapjack.VarKind.local "fnum"]

def globalBody692_22 : Prog (BitVec 64) :=
.seq globalBody692_20 globalBody692_21

def globalBody692_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "aden", Flapjack.Exp.var Flapjack.VarKind.local "aden",
    Flapjack.Exp.var Flapjack.VarKind.local "fden"]

def globalBody692_24 : Prog (BitVec 64) :=
.seq globalBody692_22 globalBody692_23

def globalBody692_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nontrivial" (Flapjack.Exp.const 1#64)

def globalBody692_26 : Prog (BitVec 64) :=
.seq globalBody692_24 globalBody692_25

def globalBody692_27 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "pinf", Flapjack.Exp.var Flapjack.VarKind.local "qinf"])
  (Flapjack.Exp.const 0#64)) globalBody692_26 globalBody692_7

def globalBody692_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody692_29 : Prog (BitVec 64) :=
.seq globalBody692_27 globalBody692_28

def globalBody692_30 : Prog (BitVec 64) :=
.decCall ("qinf") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "g2"]) globalBody692_29

def globalBody692_31 : Prog (BitVec 64) :=
.decCall ("pinf") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "g1"]) globalBody692_30

def globalBody692_32 : Prog (BitVec 64) :=
.seq globalBody692_15 globalBody692_31

def globalBody692_33 : Prog (BitVec 64) :=
.decCall ("i2") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "t2"]) globalBody692_32

def globalBody692_34 : Prog (BitVec 64) :=
.seq globalBody692_14 globalBody692_33

def globalBody692_35 : Prog (BitVec 64) :=
.decCall ("i1") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "t1"]) globalBody692_34

def globalBody692_36 : Prog (BitVec 64) :=
.seq globalBody692_11 globalBody692_35

def globalBody692_37 : Prog (BitVec 64) :=
.decCall ("e2") (Flapjack.Shape.one) ("bn254_parse_g2") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "chunk", Flapjack.Exp.const 64#64],
  Flapjack.Exp.var Flapjack.VarKind.local "g2"]) globalBody692_36

def globalBody692_38 : Prog (BitVec 64) :=
.seq globalBody692_8 globalBody692_37

def globalBody692_39 : Prog (BitVec 64) :=
.decCall ("e1") (Flapjack.Shape.one) ("bn254_parse_g1") ([Flapjack.Exp.var Flapjack.VarKind.local "chunk", Flapjack.Exp.var Flapjack.VarKind.local "g1"]) globalBody692_38

def globalBody692_40 : Prog (BitVec 64) :=
.dec ("chunk") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pairs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 192#64]]) globalBody692_39

def globalBody692_41 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n_pairs")) globalBody692_40

def globalBody692_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_inv"
  [Flapjack.Exp.var Flapjack.VarKind.local "aden", Flapjack.Exp.var Flapjack.VarKind.local "aden"]

def globalBody692_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "anum", Flapjack.Exp.var Flapjack.VarKind.local "anum",
    Flapjack.Exp.var Flapjack.VarKind.local "aden"]

def globalBody692_44 : Prog (BitVec 64) :=
.seq globalBody692_42 globalBody692_43

def globalBody692_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_pow_words"
  [Flapjack.Exp.var Flapjack.VarKind.local "res", Flapjack.Exp.var Flapjack.VarKind.local "anum",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 384#64]),
    Flapjack.Exp.const 44#64]

def globalBody692_46 : Prog (BitVec 64) :=
.seq globalBody692_44 globalBody692_45

def globalBody692_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.const 384#64]

def globalBody692_48 : Prog (BitVec 64) :=
.seq globalBody692_46 globalBody692_47

def globalBody692_49 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "fnum")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15230403791020821917#64, Flapjack.Exp.const 754611498739239741#64,
      Flapjack.Exp.const 7381016538464732716#64, Flapjack.Exp.const 1011752739694698287#64])

def globalBody692_50 : Prog (BitVec 64) :=
.seq globalBody692_48 globalBody692_49

def globalBody692_51 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "res", Flapjack.Exp.var Flapjack.VarKind.local "fnum",
    Flapjack.Exp.const 384#64]

def globalBody692_52 : Prog (BitVec 64) :=
.seq globalBody692_50 globalBody692_51

def globalBody692_53 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "nontrivial") (Flapjack.Exp.const 1#64)) globalBody692_52 globalBody692_7

def globalBody692_54 : Prog (BitVec 64) :=
.seq globalBody692_53 globalBody692_4

def globalBody692_55 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ok")

def globalBody692_56 : Prog (BitVec 64) :=
.seq globalBody692_54 globalBody692_55

def globalBody692_57 : Prog (BitVec 64) :=
.dec ("ok") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody692_56

def globalBody692_58 : Prog (BitVec 64) :=
.seq globalBody692_41 globalBody692_57

def globalBody692_59 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody692_58

def globalBody692_60 : Prog (BitVec 64) :=
.dec ("nontrivial") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody692_59

def globalBody692_61 : Prog (BitVec 64) :=
.seq globalBody692_3 globalBody692_60

def globalBody692_62 : Prog (BitVec 64) :=
.decCall ("res") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) globalBody692_61

def globalBody692_63 : Prog (BitVec 64) :=
.decCall ("aden") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) globalBody692_62

def globalBody692_64 : Prog (BitVec 64) :=
.decCall ("anum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) globalBody692_63

def globalBody692_65 : Prog (BitVec 64) :=
.decCall ("fden") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) globalBody692_64

def globalBody692_66 : Prog (BitVec 64) :=
.decCall ("fnum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) globalBody692_65

def globalBody692_67 : Prog (BitVec 64) :=
.decCall ("P") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) globalBody692_66

def globalBody692_68 : Prog (BitVec 64) :=
.decCall ("Q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) globalBody692_67

def globalBody692_69 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) globalBody692_68

def globalBody692_70 : Prog (BitVec 64) :=
.decCall ("t1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody692_69

def globalBody692_71 : Prog (BitVec 64) :=
.decCall ("g2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) globalBody692_70

def globalBody692_72 : Prog (BitVec 64) :=
.decCall ("g1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody692_71

def globalBody692_73 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody692_72

def globalBody692_74 : Prog (BitVec 64) :=
.seq globalBody692_0 globalBody692_73

def globalData692 : Decl (BitVec 64) :=
.function { name := "bn254_pairing_check", inline := false, exported := false, params := [("pairs", Flapjack.Shape.one), ("n_pairs", Flapjack.Shape.one)], body := globalBody692_74, returnShape := (Flapjack.Shape.one) }
def globalOutput692 := Pancake.PanLang.declToHOL globalData692
end InitECandidate.Proofs.FrontendStages.Declarations
