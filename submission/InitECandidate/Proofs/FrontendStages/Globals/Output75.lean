import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data75
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate59
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody75_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody75_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody75_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) globalBody75_0 globalBody75_1

def globalBody75_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_neg" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody75_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 63#64))
  (Flapjack.Exp.const 1#64)) globalBody75_3 globalBody75_1

def globalBody75_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def globalBody75_6 : Prog (BitVec 64) :=
.seq globalBody75_4 globalBody75_5

def globalBody75_7 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mod") ([Flapjack.Exp.var Flapjack.VarKind.local "aa", Flapjack.Exp.var Flapjack.VarKind.local "bb"]) globalBody75_6

def globalBody75_8 : Prog (BitVec 64) :=
.decCall ("bb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_abs") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody75_7

def globalBody75_9 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_abs") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) globalBody75_8

def globalBody75_10 : Prog (BitVec 64) :=
.seq globalBody75_2 globalBody75_9

def globalData75 : Decl (BitVec 64) :=
.function { name := "u256_smod", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody75_10, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput75 := Pancake.PanLang.declToHOL globalData75
end InitECandidate.Proofs.FrontendStages.Declarations
