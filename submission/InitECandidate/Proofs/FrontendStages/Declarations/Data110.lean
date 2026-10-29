import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify94
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body110_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 1#64]

def body110_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body110_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "len") (Flapjack.Exp.const 0#64)) body110_0 body110_1

def body110_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64])

def body110_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 128#64)) body110_3 body110_1

def body110_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 3#64]

def body110_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body110_5 body110_1

def body110_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 4#64]

def body110_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64]))
  (Flapjack.Exp.const 128#64)) body110_7 body110_1

def body110_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) body110_8 body110_1

def body110_10 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 0#64])

def body110_11 : Prog (BitVec 64) :=
.seq body110_9 body110_10

def body110_12 : Prog (BitVec 64) :=
.seq body110_6 body110_11

def body110_13 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 128#64]) body110_12

def body110_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 183#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body110_13 body110_1

def body110_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ll")) body110_5 body110_1

def body110_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 5#64]

def body110_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 55#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) body110_16 body110_1

def body110_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "ll"])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body110_5 body110_1

def body110_19 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"],
      Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 0#64])

def body110_20 : Prog (BitVec 64) :=
.seq body110_18 body110_19

def body110_21 : Prog (BitVec 64) :=
.seq body110_17 body110_20

def body110_22 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) body110_21

def body110_23 : Prog (BitVec 64) :=
.seq body110_15 body110_22

def body110_24 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 183#64]) body110_23

def body110_25 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 191#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body110_24 body110_1

def body110_26 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def body110_27 : Prog (BitVec 64) :=
.seq body110_6 body110_26

def body110_28 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]) body110_27

def body110_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 247#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body110_28 body110_1

def body110_30 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"],
      Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def body110_31 : Prog (BitVec 64) :=
.seq body110_18 body110_30

def body110_32 : Prog (BitVec 64) :=
.seq body110_17 body110_31

def body110_33 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) body110_32

def body110_34 : Prog (BitVec 64) :=
.seq body110_15 body110_33

def body110_35 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 247#64]) body110_34

def body110_36 : Prog (BitVec 64) :=
.seq body110_29 body110_35

def body110_37 : Prog (BitVec 64) :=
.seq body110_25 body110_36

def body110_38 : Prog (BitVec 64) :=
.seq body110_14 body110_37

def body110_39 : Prog (BitVec 64) :=
.seq body110_4 body110_38

def body110_40 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) body110_39

def body110_41 : Prog (BitVec 64) :=
.seq body110_2 body110_40

def body110_42 : Prog (BitVec 64) :=
.seq body110_6 body110_9

def body110_43 : Prog (BitVec 64) :=
.seq body110_42 body110_10

def body110_44 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 128#64]) body110_43

def body110_45 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 183#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body110_44 body110_1

def body110_46 : Prog (BitVec 64) :=
.seq body110_4 body110_45

def body110_47 : Prog (BitVec 64) :=
.seq body110_17 body110_18

def body110_48 : Prog (BitVec 64) :=
.seq body110_47 body110_19

def body110_49 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) body110_48

def body110_50 : Prog (BitVec 64) :=
.seq body110_15 body110_49

def body110_51 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 183#64]) body110_50

def body110_52 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 191#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) body110_51 body110_1

def body110_53 : Prog (BitVec 64) :=
.seq body110_46 body110_52

def body110_54 : Prog (BitVec 64) :=
.seq body110_53 body110_29

def body110_55 : Prog (BitVec 64) :=
.seq body110_47 body110_30

def body110_56 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) body110_55

def body110_57 : Prog (BitVec 64) :=
.seq body110_15 body110_56

def body110_58 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 247#64]) body110_57

def body110_59 : Prog (BitVec 64) :=
.seq body110_54 body110_58

def body110_60 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) body110_59

def body110_61 : Prog (BitVec 64) :=
.seq body110_2 body110_60

def originalData110 : Decl (BitVec 64) :=
.function { name := "rlp_item_header", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body110_41, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData110 : Decl (BitVec 64) :=
.function { name := "rlp_item_header", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body110_61, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original110 := Pancake.PanLang.declToHOL originalData110
def simplified110 := Pancake.PanLang.declToHOL simplifiedData110
end InitECandidate.Proofs.FrontendStages.Declarations
