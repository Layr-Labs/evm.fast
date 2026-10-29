import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data179
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate163
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody179_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody179_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody179_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "rz") (Flapjack.Exp.const 1#64)) globalBody179_0 globalBody179_1

def globalBody179_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "rlt") (Flapjack.Exp.const 0#64)) globalBody179_0 globalBody179_1

def globalBody179_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sz") (Flapjack.Exp.const 1#64)) globalBody179_0 globalBody179_1

def globalBody179_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "slt") (Flapjack.Exp.const 0#64)) globalBody179_0 globalBody179_1

def globalBody179_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody179_7 : Prog (BitVec 64) :=
.seq globalBody179_6 globalBody179_0

def globalBody179_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "okr") (Flapjack.Exp.const 0#64)) globalBody179_7 globalBody179_1

def globalBody179_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "e"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "e",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
        Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]

def globalBody179_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "elt") (Flapjack.Exp.const 0#64)) globalBody179_9 globalBody179_1

def globalBody179_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "nege"), none)) "u256_sub"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
        Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64],
    Flapjack.Exp.var Flapjack.VarKind.local "e"]

def globalBody179_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ez") (Flapjack.Exp.const 0#64)) globalBody179_11 globalBody179_1

def globalBody179_13 : Prog (BitVec 64) :=
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

def globalBody179_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "qx", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody179_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "qy",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]]

def globalBody179_16 : Prog (BitVec 64) :=
.seq globalBody179_14 globalBody179_15

def globalBody179_17 : Prog (BitVec 64) :=
.dec ("qy") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pq", Flapjack.Exp.const 32#64])) globalBody179_16

def globalBody179_18 : Prog (BitVec 64) :=
.dec ("qx") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pq")) globalBody179_17

def globalBody179_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 1#64)) globalBody179_18 globalBody179_1

def globalBody179_20 : Prog (BitVec 64) :=
.seq globalBody179_19 globalBody179_6

def globalBody179_21 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ok")

def globalBody179_22 : Prog (BitVec 64) :=
.seq globalBody179_20 globalBody179_21

def globalBody179_23 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("ec_to_affine") ([Flapjack.Exp.var Flapjack.VarKind.local "pq"]) globalBody179_22

def globalBody179_24 : Prog (BitVec 64) :=
.seq globalBody179_13 globalBody179_23

def globalBody179_25 : Prog (BitVec 64) :=
.decCall ("u2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fn_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "rinv"]) globalBody179_24

def globalBody179_26 : Prog (BitVec 64) :=
.decCall ("u1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fn_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "nege", Flapjack.Exp.var Flapjack.VarKind.local "rinv"]) globalBody179_25

def globalBody179_27 : Prog (BitVec 64) :=
.seq globalBody179_12 globalBody179_26

def globalBody179_28 : Prog (BitVec 64) :=
.decCall ("ez") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "e"]) globalBody179_27

def globalBody179_29 : Prog (BitVec 64) :=
.dec ("nege") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody179_28

def globalBody179_30 : Prog (BitVec 64) :=
.decCall ("rinv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fn_inv") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) globalBody179_29

def globalBody179_31 : Prog (BitVec 64) :=
.seq globalBody179_10 globalBody179_30

def globalBody179_32 : Prog (BitVec 64) :=
.decCall ("elt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "e",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) globalBody179_31

def globalBody179_33 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "msg_hash", Flapjack.Exp.const 32#64]) globalBody179_32

def globalBody179_34 : Prog (BitVec 64) :=
.dec ("ry") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pr", Flapjack.Exp.const 32#64])) globalBody179_33

def globalBody179_35 : Prog (BitVec 64) :=
.dec ("rx") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pr")) globalBody179_34

def globalBody179_36 : Prog (BitVec 64) :=
.seq globalBody179_8 globalBody179_35

def globalBody179_37 : Prog (BitVec 64) :=
.decCall ("okr") (Flapjack.Shape.one) ("secp256k1_decompress_r") ([Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "recid",
  Flapjack.Exp.var Flapjack.VarKind.local "pr"]) globalBody179_36

def globalBody179_38 : Prog (BitVec 64) :=
.decCall ("pr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody179_37

def globalBody179_39 : Prog (BitVec 64) :=
.decCall ("pq") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody179_38

def globalBody179_40 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody179_39

def globalBody179_41 : Prog (BitVec 64) :=
.seq globalBody179_5 globalBody179_40

def globalBody179_42 : Prog (BitVec 64) :=
.decCall ("slt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "s",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) globalBody179_41

def globalBody179_43 : Prog (BitVec 64) :=
.seq globalBody179_4 globalBody179_42

def globalBody179_44 : Prog (BitVec 64) :=
.decCall ("sz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "s"]) globalBody179_43

def globalBody179_45 : Prog (BitVec 64) :=
.seq globalBody179_3 globalBody179_44

def globalBody179_46 : Prog (BitVec 64) :=
.decCall ("rlt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13822214165235122497#64, Flapjack.Exp.const 13451932020343611451#64,
      Flapjack.Exp.const 18446744073709551614#64, Flapjack.Exp.const 18446744073709551615#64]]) globalBody179_45

def globalBody179_47 : Prog (BitVec 64) :=
.seq globalBody179_2 globalBody179_46

def globalBody179_48 : Prog (BitVec 64) :=
.decCall ("rz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "r"]) globalBody179_47

def globalData179 : Decl (BitVec 64) :=
.function { name := "secp256k1_recover", inline := false, exported := false, params := [("msg_hash", Flapjack.Shape.one),
  ("r", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("s", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("recid", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody179_48, returnShape := (Flapjack.Shape.one) }
def globalOutput179 := Pancake.PanLang.declToHOL globalData179
end InitECandidate.Proofs.FrontendStages.Declarations
