import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data77
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate61
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody77_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody77_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody77_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "m")])
  (Flapjack.Exp.const 0#64)) globalBody77_0 globalBody77_1

def globalBody77_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_mod"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p"), Flapjack.Exp.const 0#64,
        Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64],
    Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody77_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p"))
  (Flapjack.Exp.const 0#64)) globalBody77_3 globalBody77_1

def globalBody77_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p"),
        Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p"), Flapjack.Exp.const 0#64,
        Flapjack.Exp.const 0#64]]

def globalBody77_6 : Prog (BitVec 64) :=
.seq globalBody77_4 globalBody77_5

def globalBody77_7 : Prog (BitVec 64) :=
Flapjack.Prog.call none "digits_divmod"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 4#64, Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody77_8 : Prog (BitVec 64) :=
.seq globalBody77_6 globalBody77_7

def globalBody77_9 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody77_8

def globalBody77_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) globalBody77_9 globalBody77_1

def globalBody77_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "f")]]

def globalBody77_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 64#64],
    Flapjack.Exp.rStruct
      [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 6 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
        Flapjack.Exp.rField 7 (Flapjack.Exp.var Flapjack.VarKind.local "f")]]

def globalBody77_13 : Prog (BitVec 64) :=
.seq globalBody77_11 globalBody77_12

def globalBody77_14 : Prog (BitVec 64) :=
Flapjack.Prog.call none "digits_divmod"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 16#64, Flapjack.Exp.var Flapjack.VarKind.local "m"]

def globalBody77_15 : Prog (BitVec 64) :=
.seq globalBody77_13 globalBody77_14

def globalBody77_16 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mul_full") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody77_15

def globalBody77_17 : Prog (BitVec 64) :=
.seq globalBody77_10 globalBody77_16

def globalBody77_18 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 424#64]) globalBody77_17

def globalBody77_19 : Prog (BitVec 64) :=
.seq globalBody77_2 globalBody77_18

def globalData77 : Decl (BitVec 64) :=
.function { name := "u256_mulmod", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("m", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody77_19, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput77 := Pancake.PanLang.declToHOL globalData77
end InitECandidate.Proofs.FrontendStages.Declarations
