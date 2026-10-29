import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data79
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate63
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody79_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 192#64, Flapjack.Exp.var Flapjack.VarKind.local "n3"])

def globalBody79_1 : Prog (BitVec 64) :=
.decCall ("n3") (Flapjack.Shape.one) ("bit_length64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a")]) globalBody79_0

def globalBody79_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody79_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 0#64)) globalBody79_1 globalBody79_2

def globalBody79_4 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 128#64, Flapjack.Exp.var Flapjack.VarKind.local "n2"])

def globalBody79_5 : Prog (BitVec 64) :=
.decCall ("n2") (Flapjack.Shape.one) ("bit_length64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a")]) globalBody79_4

def globalBody79_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 0#64)) globalBody79_5 globalBody79_2

def globalBody79_7 : Prog (BitVec 64) :=
.seq globalBody79_3 globalBody79_6

def globalBody79_8 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "n1"])

def globalBody79_9 : Prog (BitVec 64) :=
.decCall ("n1") (Flapjack.Shape.one) ("bit_length64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a")]) globalBody79_8

def globalBody79_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 0#64)) globalBody79_9 globalBody79_2

def globalBody79_11 : Prog (BitVec 64) :=
.seq globalBody79_7 globalBody79_10

def globalBody79_12 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bit_length64" [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a")]

def globalBody79_13 : Prog (BitVec 64) :=
.seq globalBody79_11 globalBody79_12

def globalData79 : Decl (BitVec 64) :=
.function { name := "u256_bit_length", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody79_13, returnShape := (Flapjack.Shape.one) }
def globalOutput79 := Pancake.PanLang.declToHOL globalData79
end InitECandidate.Proofs.FrontendStages.Declarations
