import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify92
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body108_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 1#64]

def body108_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body108_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "len") (Flapjack.Exp.const 0#64)) body108_0 body108_1

def body108_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64,
      Flapjack.Exp.const 1#64])

def body108_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 128#64)) body108_3 body108_1

def body108_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 3#64]

def body108_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body108_5 body108_1

def body108_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 4#64]

def body108_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64]))
  (Flapjack.Exp.const 128#64)) body108_7 body108_1

def body108_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) body108_8 body108_1

def body108_10 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64,
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "n",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]])

def body108_11 : Prog (BitVec 64) :=
.seq body108_9 body108_10

def body108_12 : Prog (BitVec 64) :=
.seq body108_6 body108_11

def body108_13 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 128#64]) body108_12

def body108_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 183#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body108_13 body108_1

def body108_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ll")) body108_5 body108_1

def body108_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 5#64]

def body108_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 55#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) body108_16 body108_1

def body108_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "ll"])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body108_5 body108_1

def body108_19 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64,
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64,
          Flapjack.Exp.var Flapjack.VarKind.local "ll"],
      Flapjack.Exp.var Flapjack.VarKind.local "n",
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll",
          Flapjack.Exp.var Flapjack.VarKind.local "n"]])

def body108_20 : Prog (BitVec 64) :=
.seq body108_18 body108_19

def body108_21 : Prog (BitVec 64) :=
.seq body108_17 body108_20

def body108_22 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) body108_21

def body108_23 : Prog (BitVec 64) :=
.seq body108_15 body108_22

def body108_24 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 183#64]) body108_23

def body108_25 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 191#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body108_24 body108_1

def body108_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_list_count"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body108_27 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64,
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "n",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]])

def body108_28 : Prog (BitVec 64) :=
.seq body108_26 body108_27

def body108_29 : Prog (BitVec 64) :=
.seq body108_6 body108_28

def body108_30 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]) body108_29

def body108_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 247#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body108_30 body108_1

def body108_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_list_count"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64,
        Flapjack.Exp.var Flapjack.VarKind.local "ll"],
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body108_33 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64,
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64,
          Flapjack.Exp.var Flapjack.VarKind.local "ll"],
      Flapjack.Exp.var Flapjack.VarKind.local "n",
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll",
          Flapjack.Exp.var Flapjack.VarKind.local "n"]])

def body108_34 : Prog (BitVec 64) :=
.seq body108_32 body108_33

def body108_35 : Prog (BitVec 64) :=
.seq body108_18 body108_34

def body108_36 : Prog (BitVec 64) :=
.seq body108_17 body108_35

def body108_37 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) body108_36

def body108_38 : Prog (BitVec 64) :=
.seq body108_15 body108_37

def body108_39 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 247#64]) body108_38

def body108_40 : Prog (BitVec 64) :=
.seq body108_31 body108_39

def body108_41 : Prog (BitVec 64) :=
.seq body108_25 body108_40

def body108_42 : Prog (BitVec 64) :=
.seq body108_14 body108_41

def body108_43 : Prog (BitVec 64) :=
.seq body108_4 body108_42

def body108_44 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) body108_43

def body108_45 : Prog (BitVec 64) :=
.seq body108_2 body108_44

def body108_46 : Prog (BitVec 64) :=
.seq body108_6 body108_9

def body108_47 : Prog (BitVec 64) :=
.seq body108_46 body108_10

def body108_48 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 128#64]) body108_47

def body108_49 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 183#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body108_48 body108_1

def body108_50 : Prog (BitVec 64) :=
.seq body108_4 body108_49

def body108_51 : Prog (BitVec 64) :=
.seq body108_17 body108_18

def body108_52 : Prog (BitVec 64) :=
.seq body108_51 body108_19

def body108_53 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) body108_52

def body108_54 : Prog (BitVec 64) :=
.seq body108_15 body108_53

def body108_55 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 183#64]) body108_54

def body108_56 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 191#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body108_55 body108_1

def body108_57 : Prog (BitVec 64) :=
.seq body108_50 body108_56

def body108_58 : Prog (BitVec 64) :=
.seq body108_6 body108_26

def body108_59 : Prog (BitVec 64) :=
.seq body108_58 body108_27

def body108_60 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]) body108_59

def body108_61 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 247#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body108_60 body108_1

def body108_62 : Prog (BitVec 64) :=
.seq body108_57 body108_61

def body108_63 : Prog (BitVec 64) :=
.seq body108_51 body108_32

def body108_64 : Prog (BitVec 64) :=
.seq body108_63 body108_33

def body108_65 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) body108_64

def body108_66 : Prog (BitVec 64) :=
.seq body108_15 body108_65

def body108_67 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 247#64]) body108_66

def body108_68 : Prog (BitVec 64) :=
.seq body108_62 body108_67

def body108_69 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) body108_68

def body108_70 : Prog (BitVec 64) :=
.seq body108_2 body108_69

def originalData108 : Decl (BitVec 64) :=
.function { name := "rlp_item", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body108_45, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData108 : Decl (BitVec 64) :=
.function { name := "rlp_item", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body108_70, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original108 := Pancake.PanLang.declToHOL originalData108
def simplified108 := Pancake.PanLang.declToHOL simplifiedData108
end InitECandidate.Proofs.FrontendStages.Declarations
