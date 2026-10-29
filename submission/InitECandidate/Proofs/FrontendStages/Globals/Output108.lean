import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data108
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate86
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody108_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 1#64]

def globalBody108_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody108_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "len") (Flapjack.Exp.const 0#64)) globalBody108_0 globalBody108_1

def globalBody108_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64,
      Flapjack.Exp.const 1#64])

def globalBody108_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 128#64)) globalBody108_3 globalBody108_1

def globalBody108_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 3#64]

def globalBody108_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody108_5 globalBody108_1

def globalBody108_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 4#64]

def globalBody108_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64]))
  (Flapjack.Exp.const 128#64)) globalBody108_7 globalBody108_1

def globalBody108_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 1#64)) globalBody108_8 globalBody108_1

def globalBody108_10 : Prog (BitVec 64) :=
.seq globalBody108_6 globalBody108_9

def globalBody108_11 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64,
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "n",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]])

def globalBody108_12 : Prog (BitVec 64) :=
.seq globalBody108_10 globalBody108_11

def globalBody108_13 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 128#64]) globalBody108_12

def globalBody108_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 183#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) globalBody108_13 globalBody108_1

def globalBody108_15 : Prog (BitVec 64) :=
.seq globalBody108_4 globalBody108_14

def globalBody108_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ll")) globalBody108_5 globalBody108_1

def globalBody108_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 5#64]

def globalBody108_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 55#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody108_17 globalBody108_1

def globalBody108_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "ll"])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody108_5 globalBody108_1

def globalBody108_20 : Prog (BitVec 64) :=
.seq globalBody108_18 globalBody108_19

def globalBody108_21 : Prog (BitVec 64) :=
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

def globalBody108_22 : Prog (BitVec 64) :=
.seq globalBody108_20 globalBody108_21

def globalBody108_23 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) globalBody108_22

def globalBody108_24 : Prog (BitVec 64) :=
.seq globalBody108_16 globalBody108_23

def globalBody108_25 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 183#64]) globalBody108_24

def globalBody108_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 191#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) globalBody108_25 globalBody108_1

def globalBody108_27 : Prog (BitVec 64) :=
.seq globalBody108_15 globalBody108_26

def globalBody108_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_list_count"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody108_29 : Prog (BitVec 64) :=
.seq globalBody108_6 globalBody108_28

def globalBody108_30 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64,
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "n",
      Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]])

def globalBody108_31 : Prog (BitVec 64) :=
.seq globalBody108_29 globalBody108_30

def globalBody108_32 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]) globalBody108_31

def globalBody108_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 247#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) globalBody108_32 globalBody108_1

def globalBody108_34 : Prog (BitVec 64) :=
.seq globalBody108_27 globalBody108_33

def globalBody108_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_list_count"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64,
        Flapjack.Exp.var Flapjack.VarKind.local "ll"],
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody108_36 : Prog (BitVec 64) :=
.seq globalBody108_20 globalBody108_35

def globalBody108_37 : Prog (BitVec 64) :=
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

def globalBody108_38 : Prog (BitVec 64) :=
.seq globalBody108_36 globalBody108_37

def globalBody108_39 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) globalBody108_38

def globalBody108_40 : Prog (BitVec 64) :=
.seq globalBody108_16 globalBody108_39

def globalBody108_41 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 247#64]) globalBody108_40

def globalBody108_42 : Prog (BitVec 64) :=
.seq globalBody108_34 globalBody108_41

def globalBody108_43 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) globalBody108_42

def globalBody108_44 : Prog (BitVec 64) :=
.seq globalBody108_2 globalBody108_43

def globalData108 : Decl (BitVec 64) :=
.function { name := "rlp_item", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody108_44, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput108 := Pancake.PanLang.declToHOL globalData108
end InitECandidate.Proofs.FrontendStages.Declarations
