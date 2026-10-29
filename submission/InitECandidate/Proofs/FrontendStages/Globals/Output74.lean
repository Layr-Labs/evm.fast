import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data74
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate58
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody74_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody74_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody74_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) globalBody74_0 globalBody74_1

def globalBody74_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_neg" [Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody74_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.shift Flapjack.Shift.lsr
    (Flapjack.Exp.op Flapjack.BinOp.xor
      [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
    (Flapjack.Exp.const 63#64))
  (Flapjack.Exp.const 1#64)) globalBody74_3 globalBody74_1

def globalBody74_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "q")

def globalBody74_6 : Prog (BitVec 64) :=
.seq globalBody74_4 globalBody74_5

def globalBody74_7 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_div") ([Flapjack.Exp.var Flapjack.VarKind.local "aa", Flapjack.Exp.var Flapjack.VarKind.local "bb"]) globalBody74_6

def globalBody74_8 : Prog (BitVec 64) :=
.decCall ("bb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_abs") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody74_7

def globalBody74_9 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_abs") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) globalBody74_8

def globalBody74_10 : Prog (BitVec 64) :=
.seq globalBody74_2 globalBody74_9

def globalData74 : Decl (BitVec 64) :=
.function { name := "u256_sdiv", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody74_10, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput74 := Pancake.PanLang.declToHOL globalData74
end InitECandidate.Proofs.FrontendStages.Declarations
