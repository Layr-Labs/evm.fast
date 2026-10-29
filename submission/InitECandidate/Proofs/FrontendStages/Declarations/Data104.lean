import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify88
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body104_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 200#64]

def body104_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak_absorb_block"
  [Flapjack.Exp.var Flapjack.VarKind.local "stp",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]]

def body104_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 136#64])

def body104_3 : Prog (BitVec 64) :=
.seq body104_1 body104_2

def body104_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 136#64])) body104_3

def body104_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "keccak_pad", Flapjack.Exp.const 136#64]

def body104_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.global "keccak_pad",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"],
    Flapjack.Exp.var Flapjack.VarKind.local "rem"]

def body104_7 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "keccak_pad", Flapjack.Exp.var Flapjack.VarKind.local "rem"])
  (Flapjack.Exp.const 1#64)

def body104_8 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "keccak_pad", Flapjack.Exp.const 135#64])
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.global "keccak_pad", Flapjack.Exp.const 135#64]),
      Flapjack.Exp.const 128#64])

def body104_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak_absorb_block"
  [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.var Flapjack.VarKind.global "keccak_pad"]

def body104_10 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out")
  (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "stp"))

def body104_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64]))

def body104_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64]))

def body104_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64]))

def body104_14 : Prog (BitVec 64) :=
.seq body104_12 body104_13

def body104_15 : Prog (BitVec 64) :=
.seq body104_11 body104_14

def body104_16 : Prog (BitVec 64) :=
.seq body104_10 body104_15

def body104_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "stp",
    Flapjack.Exp.const 32#64]

def body104_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body104_16 body104_17

def body104_19 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body104_20 : Prog (BitVec 64) :=
.seq body104_18 body104_19

def body104_21 : Prog (BitVec 64) :=
.seq body104_9 body104_20

def body104_22 : Prog (BitVec 64) :=
.seq body104_8 body104_21

def body104_23 : Prog (BitVec 64) :=
.seq body104_7 body104_22

def body104_24 : Prog (BitVec 64) :=
.seq body104_6 body104_23

def body104_25 : Prog (BitVec 64) :=
.seq body104_5 body104_24

def body104_26 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body104_25

def body104_27 : Prog (BitVec 64) :=
.seq body104_4 body104_26

def body104_28 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body104_27

def body104_29 : Prog (BitVec 64) :=
.seq body104_0 body104_28

def body104_30 : Prog (BitVec 64) :=
.dec ("stp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "keccak_st") body104_29

def body104_31 : Prog (BitVec 64) :=
.seq body104_5 body104_6

def body104_32 : Prog (BitVec 64) :=
.seq body104_31 body104_7

def body104_33 : Prog (BitVec 64) :=
.seq body104_32 body104_8

def body104_34 : Prog (BitVec 64) :=
.seq body104_33 body104_9

def body104_35 : Prog (BitVec 64) :=
.seq body104_10 body104_11

def body104_36 : Prog (BitVec 64) :=
.seq body104_35 body104_12

def body104_37 : Prog (BitVec 64) :=
.seq body104_36 body104_13

def body104_38 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body104_37 body104_17

def body104_39 : Prog (BitVec 64) :=
.seq body104_34 body104_38

def body104_40 : Prog (BitVec 64) :=
.seq body104_39 body104_19

def body104_41 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body104_40

def body104_42 : Prog (BitVec 64) :=
.seq body104_4 body104_41

def body104_43 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body104_42

def body104_44 : Prog (BitVec 64) :=
.seq body104_0 body104_43

def body104_45 : Prog (BitVec 64) :=
.dec ("stp") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "keccak_st") body104_44

def originalData104 : Decl (BitVec 64) :=
.function { name := "keccak256", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body104_30, returnShape := (Flapjack.Shape.one) }
def simplifiedData104 : Decl (BitVec 64) :=
.function { name := "keccak256", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body104_45, returnShape := (Flapjack.Shape.one) }
def original104 := Pancake.PanLang.declToHOL originalData104
def simplified104 := Pancake.PanLang.declToHOL simplifiedData104
end InitECandidate.Proofs.FrontendStages.Declarations
