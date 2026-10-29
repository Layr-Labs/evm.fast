import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify163
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body179_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body179_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body179_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "rz") (Flapjack.Exp.const 1#64)) body179_0 body179_1

def body179_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "rlt") (Flapjack.Exp.const 0#64)) body179_0 body179_1

def body179_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sz") (Flapjack.Exp.const 1#64)) body179_0 body179_1

def body179_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "slt") (Flapjack.Exp.const 0#64)) body179_0 body179_1

def body179_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body179_7 : Prog (BitVec 64) :=
.seq body179_6 body179_0

def body179_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "okr") (Flapjack.Exp.const 0#64)) body179_7 body179_1

def body179_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "e"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "e",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
        Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]

def body179_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "elt") (Flapjack.Exp.const 0#64)) body179_9 body179_1

def body179_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "nege"), none)) "u256_sub"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
        Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64],
    Flapjack.Exp.var Flapjack.VarKind.local "e"]

def body179_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ez") (Flapjack.Exp.const 0#64)) body179_11 body179_1

def body179_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_mul2"
  [Flapjack.Exp.var Flapjack.VarKind.local "pq", Flapjack.Exp.var Flapjack.VarKind.local "u1",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 6481385041966929816#64, Flapjack.Exp.const 188021827762530521#64,
        Flapjack.Exp.const 6170039885052185351#64, Flapjack.Exp.const 8772561819708210092#64],
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 11261198710074299576#64, Flapjack.Exp.const 18237243440184513561#64,
        Flapjack.Exp.const 6747795201694173352#64, Flapjack.Exp.const 5204712524664259685#64],
    Flapjack.Exp.var Flapjack.VarKind.local "u2", Flapjack.Exp.var Flapjack.VarKind.local "rx",
    Flapjack.Exp.var Flapjack.VarKind.local "ry"]

def body179_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "qx", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body179_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "qy",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]]

def body179_16 : Prog (BitVec 64) :=
.seq body179_14 body179_15

def body179_17 : Prog (BitVec 64) :=
.dec ("qy") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pq", Flapjack.Exp.const 32#64])) body179_16

def body179_18 : Prog (BitVec 64) :=
.dec ("qx") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pq")) body179_17

def body179_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) body179_18 body179_1

def body179_20 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ok")

def body179_21 : Prog (BitVec 64) :=
.seq body179_6 body179_20

def body179_22 : Prog (BitVec 64) :=
.seq body179_19 body179_21

def body179_23 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("ec_to_affine") ([Flapjack.Exp.var Flapjack.VarKind.local "pq"]) body179_22

def body179_24 : Prog (BitVec 64) :=
.seq body179_13 body179_23

def body179_25 : Prog (BitVec 64) :=
.decCall ("u2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fn_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "rinv"]) body179_24

def body179_26 : Prog (BitVec 64) :=
.decCall ("u1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fn_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "nege", Flapjack.Exp.var Flapjack.VarKind.local "rinv"]) body179_25

def body179_27 : Prog (BitVec 64) :=
.seq body179_12 body179_26

def body179_28 : Prog (BitVec 64) :=
.decCall ("ez") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "e"]) body179_27

def body179_29 : Prog (BitVec 64) :=
.dec ("nege") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body179_28

def body179_30 : Prog (BitVec 64) :=
.decCall ("rinv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fn_inv") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) body179_29

def body179_31 : Prog (BitVec 64) :=
.seq body179_10 body179_30

def body179_32 : Prog (BitVec 64) :=
.decCall ("elt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "e",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) body179_31

def body179_33 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "msg_hash", Flapjack.Exp.const 32#64]) body179_32

def body179_34 : Prog (BitVec 64) :=
.dec ("ry") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pr", Flapjack.Exp.const 32#64])) body179_33

def body179_35 : Prog (BitVec 64) :=
.dec ("rx") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pr")) body179_34

def body179_36 : Prog (BitVec 64) :=
.seq body179_8 body179_35

def body179_37 : Prog (BitVec 64) :=
.decCall ("okr") (Flapjack.Shape.one) ("secp256k1_decompress_r") ([Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "recid",
  Flapjack.Exp.var Flapjack.VarKind.local "pr"]) body179_36

def body179_38 : Prog (BitVec 64) :=
.decCall ("pr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body179_37

def body179_39 : Prog (BitVec 64) :=
.decCall ("pq") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body179_38

def body179_40 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body179_39

def body179_41 : Prog (BitVec 64) :=
.seq body179_5 body179_40

def body179_42 : Prog (BitVec 64) :=
.decCall ("slt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) body179_41

def body179_43 : Prog (BitVec 64) :=
.seq body179_4 body179_42

def body179_44 : Prog (BitVec 64) :=
.decCall ("sz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "s"]) body179_43

def body179_45 : Prog (BitVec 64) :=
.seq body179_3 body179_44

def body179_46 : Prog (BitVec 64) :=
.decCall ("rlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) body179_45

def body179_47 : Prog (BitVec 64) :=
.seq body179_2 body179_46

def body179_48 : Prog (BitVec 64) :=
.decCall ("rz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) body179_47

def body179_49 : Prog (BitVec 64) :=
.seq body179_19 body179_6

def body179_50 : Prog (BitVec 64) :=
.seq body179_49 body179_20

def body179_51 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("ec_to_affine") ([Flapjack.Exp.var Flapjack.VarKind.local "pq"]) body179_50

def body179_52 : Prog (BitVec 64) :=
.seq body179_13 body179_51

def body179_53 : Prog (BitVec 64) :=
.decCall ("u2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fn_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "rinv"]) body179_52

def body179_54 : Prog (BitVec 64) :=
.decCall ("u1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fn_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "nege", Flapjack.Exp.var Flapjack.VarKind.local "rinv"]) body179_53

def body179_55 : Prog (BitVec 64) :=
.seq body179_12 body179_54

def body179_56 : Prog (BitVec 64) :=
.decCall ("ez") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "e"]) body179_55

def body179_57 : Prog (BitVec 64) :=
.dec ("nege") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body179_56

def body179_58 : Prog (BitVec 64) :=
.decCall ("rinv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fn_inv") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) body179_57

def body179_59 : Prog (BitVec 64) :=
.seq body179_10 body179_58

def body179_60 : Prog (BitVec 64) :=
.decCall ("elt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "e",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) body179_59

def body179_61 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "msg_hash", Flapjack.Exp.const 32#64]) body179_60

def body179_62 : Prog (BitVec 64) :=
.dec ("ry") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pr", Flapjack.Exp.const 32#64])) body179_61

def body179_63 : Prog (BitVec 64) :=
.dec ("rx") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pr")) body179_62

def body179_64 : Prog (BitVec 64) :=
.seq body179_8 body179_63

def body179_65 : Prog (BitVec 64) :=
.decCall ("okr") (Flapjack.Shape.one) ("secp256k1_decompress_r") ([Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "recid",
  Flapjack.Exp.var Flapjack.VarKind.local "pr"]) body179_64

def body179_66 : Prog (BitVec 64) :=
.decCall ("pr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body179_65

def body179_67 : Prog (BitVec 64) :=
.decCall ("pq") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body179_66

def body179_68 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body179_67

def body179_69 : Prog (BitVec 64) :=
.seq body179_5 body179_68

def body179_70 : Prog (BitVec 64) :=
.decCall ("slt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) body179_69

def body179_71 : Prog (BitVec 64) :=
.seq body179_4 body179_70

def body179_72 : Prog (BitVec 64) :=
.decCall ("sz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "s"]) body179_71

def body179_73 : Prog (BitVec 64) :=
.seq body179_3 body179_72

def body179_74 : Prog (BitVec 64) :=
.decCall ("rlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) body179_73

def body179_75 : Prog (BitVec 64) :=
.seq body179_2 body179_74

def body179_76 : Prog (BitVec 64) :=
.decCall ("rz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) body179_75

def originalData179 : Decl (BitVec 64) :=
.function { name := "secp256k1_recover", inline := false, exported := false, params := [("msg_hash", Flapjack.Shape.one),
  ("r", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("recid", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body179_48, returnShape := (Flapjack.Shape.one) }
def simplifiedData179 : Decl (BitVec 64) :=
.function { name := "secp256k1_recover", inline := false, exported := false, params := [("msg_hash", Flapjack.Shape.one),
  ("r", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("recid", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body179_76, returnShape := (Flapjack.Shape.one) }
def original179 := Pancake.PanLang.declToHOL originalData179
def simplified179 := Pancake.PanLang.declToHOL simplifiedData179
end InitECandidate.Proofs.FrontendStages.Declarations
