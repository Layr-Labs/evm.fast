import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify53
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body69_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "d"]

def body69_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "q",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.const 0#64)

def body69_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body69_3 : Prog (BitVec 64) :=
.seq body69_1 body69_2

def body69_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 16#64)) body69_3

def body69_5 : Prog (BitVec 64) :=
Flapjack.Prog.call none "digits_to_u256" [Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body69_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body69_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "mm")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body69_5 body69_6

def body69_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body69_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "r",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.const 0#64)

def body69_10 : Prog (BitVec 64) :=
.seq body69_9 body69_2

def body69_11 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 8#64)) body69_10

def body69_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "divmnu"
  [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "mm",
    Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body69_13 : Prog (BitVec 64) :=
Flapjack.Prog.call none "digits_to_u256" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body69_14 : Prog (BitVec 64) :=
.seq body69_12 body69_13

def body69_15 : Prog (BitVec 64) :=
.seq body69_11 body69_14

def body69_16 : Prog (BitVec 64) :=
.seq body69_8 body69_15

def body69_17 : Prog (BitVec 64) :=
.seq body69_7 body69_16

def body69_18 : Prog (BitVec 64) :=
.seq body69_4 body69_17

def body69_19 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body69_18

def body69_20 : Prog (BitVec 64) :=
.decCall ("mm") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m"]) body69_19

def body69_21 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.const 8#64]) body69_20

def body69_22 : Prog (BitVec 64) :=
.seq body69_0 body69_21

def body69_23 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 560#64]) body69_22

def body69_24 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 352#64]) body69_23

def body69_25 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 216#64]) body69_24

def body69_26 : Prog (BitVec 64) :=
.seq body69_4 body69_7

def body69_27 : Prog (BitVec 64) :=
.seq body69_26 body69_8

def body69_28 : Prog (BitVec 64) :=
.seq body69_27 body69_11

def body69_29 : Prog (BitVec 64) :=
.seq body69_28 body69_12

def body69_30 : Prog (BitVec 64) :=
.seq body69_29 body69_13

def body69_31 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body69_30

def body69_32 : Prog (BitVec 64) :=
.decCall ("mm") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m"]) body69_31

def body69_33 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.const 8#64]) body69_32

def body69_34 : Prog (BitVec 64) :=
.seq body69_0 body69_33

def body69_35 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 560#64]) body69_34

def body69_36 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 352#64]) body69_35

def body69_37 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 216#64]) body69_36

def originalData69 : Decl (BitVec 64) :=
.function { name := "digits_divmod", inline := false, exported := false, params := [("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one),
  ("d", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body69_25, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData69 : Decl (BitVec 64) :=
.function { name := "digits_divmod", inline := false, exported := false, params := [("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one),
  ("d", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body69_37, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original69 := Pancake.PanLang.declToHOL originalData69
def simplified69 := Pancake.PanLang.declToHOL simplifiedData69
end InitECandidate.Proofs.FrontendStages.Declarations
