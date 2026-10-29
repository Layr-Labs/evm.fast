import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data390
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate374
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody390_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody390_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody390_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) globalBody390_0 globalBody390_1

def globalBody390_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
          Flapjack.Exp.const 24#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64]

def globalBody390_4 : Prog (BitVec 64) :=
.decCall ("k") (Flapjack.Shape.one) ("sk_make") ([Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")]) globalBody390_3

def globalBody390_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) globalBody390_4 globalBody390_1

def globalBody390_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody390_7 : Prog (BitVec 64) :=
.seq globalBody390_5 globalBody390_6

def globalBody390_8 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody390_7

def globalBody390_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) globalBody390_8

def globalBody390_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "jdel"
  [Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def globalBody390_11 : Prog (BitVec 64) :=
.seq globalBody390_9 globalBody390_10

def globalBody390_12 : Prog (BitVec 64) :=
.seq globalBody390_11 globalBody390_0

def globalBody390_13 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody390_12

def globalBody390_14 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.const 24#64])) globalBody390_13

def globalBody390_15 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m")) globalBody390_14

def globalBody390_16 : Prog (BitVec 64) :=
.seq globalBody390_2 globalBody390_15

def globalBody390_17 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody390_16

def globalBody390_18 : Prog (BitVec 64) :=
.dec ("outer") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 184#64]),
      Flapjack.Exp.const 32#64])) globalBody390_17

def globalData390 : Decl (BitVec 64) :=
.function { name := "destroy_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody390_18, returnShape := (Flapjack.Shape.one) }
def globalOutput390 := Pancake.PanLang.declToHOL globalData390
end InitECandidate.Proofs.FrontendStages.Declarations
