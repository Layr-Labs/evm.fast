import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify61
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body77_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body77_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body77_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "m")])
  (Flapjack.Exp.const 0#64)) body77_0 body77_1

def body77_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_mod"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p"), Flapjack.Exp.const 0#64,
        Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64],
    Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body77_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p"))
  (Flapjack.Exp.const 0#64)) body77_3 body77_1

def body77_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p"),
        Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p"), Flapjack.Exp.const 0#64,
        Flapjack.Exp.const 0#64]]

def body77_6 : Prog (BitVec 64) :=
Flapjack.Prog.call none "digits_divmod"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 4#64, Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body77_7 : Prog (BitVec 64) :=
.seq body77_5 body77_6

def body77_8 : Prog (BitVec 64) :=
.seq body77_4 body77_7

def body77_9 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body77_8

def body77_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) body77_9 body77_1

def body77_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "f")]]

def body77_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 64#64],
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 6 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 7 (Flapjack.Exp.var Flapjack.VarKind.local "f")]]

def body77_13 : Prog (BitVec 64) :=
Flapjack.Prog.call none "digits_divmod"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 16#64, Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body77_14 : Prog (BitVec 64) :=
.seq body77_12 body77_13

def body77_15 : Prog (BitVec 64) :=
.seq body77_11 body77_14

def body77_16 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul_full") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) body77_15

def body77_17 : Prog (BitVec 64) :=
.seq body77_10 body77_16

def body77_18 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 424#64]) body77_17

def body77_19 : Prog (BitVec 64) :=
.seq body77_2 body77_18

def body77_20 : Prog (BitVec 64) :=
.seq body77_4 body77_5

def body77_21 : Prog (BitVec 64) :=
.seq body77_20 body77_6

def body77_22 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body77_21

def body77_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) body77_22 body77_1

def body77_24 : Prog (BitVec 64) :=
.seq body77_11 body77_12

def body77_25 : Prog (BitVec 64) :=
.seq body77_24 body77_13

def body77_26 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul_full") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) body77_25

def body77_27 : Prog (BitVec 64) :=
.seq body77_23 body77_26

def body77_28 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "u256_ws", Flapjack.Exp.const 424#64]) body77_27

def body77_29 : Prog (BitVec 64) :=
.seq body77_2 body77_28

def originalData77 : Decl (BitVec 64) :=
.function { name := "u256_mulmod", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("m", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body77_19, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData77 : Decl (BitVec 64) :=
.function { name := "u256_mulmod", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("m", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body77_29, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original77 := Pancake.PanLang.declToHOL originalData77
def simplified77 := Pancake.PanLang.declToHOL simplifiedData77
end InitECandidate.Proofs.FrontendStages.Declarations
