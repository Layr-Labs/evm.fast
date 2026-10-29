import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data70
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate54
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody70_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody70_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody70_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) globalBody70_0 globalBody70_1

def globalBody70_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")])

def globalBody70_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 1#64)) globalBody70_3 globalBody70_1

def globalBody70_5 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"), Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"), Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody70_6 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody70_5

def globalBody70_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) globalBody70_6 globalBody70_1

def globalBody70_8 : Prog (BitVec 64) :=
.seq globalBody70_4 globalBody70_7

def globalBody70_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_digits"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody70_10 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "q"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "q"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "q"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "q"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "r"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "r")])

def globalBody70_11 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("digits_to_u256") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64]),
      Flapjack.Exp.const 216#64]]) globalBody70_10

def globalBody70_12 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("digits_divmod") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.const 8#64, Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody70_11

def globalBody70_13 : Prog (BitVec 64) :=
.seq globalBody70_9 globalBody70_12

def globalBody70_14 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 424#64]) globalBody70_13

def globalBody70_15 : Prog (BitVec 64) :=
.seq globalBody70_8 globalBody70_14

def globalBody70_16 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody70_15

def globalBody70_17 : Prog (BitVec 64) :=
.seq globalBody70_2 globalBody70_16

def globalData70 : Decl (BitVec 64) :=
.function { name := "u256_divmod", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody70_17, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput70 := Pancake.PanLang.declToHOL globalData70
end InitECandidate.Proofs.FrontendStages.Declarations
