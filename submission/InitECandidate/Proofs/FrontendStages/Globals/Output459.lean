import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data459
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate443
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody459_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody459_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody459_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) globalBody459_0 globalBody459_1

def globalBody459_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 0#64])

def globalBody459_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "endp")
  (Flapjack.Exp.const 18446744073709551615#64)) globalBody459_3 globalBody459_1

def globalBody459_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "before")
  (Flapjack.Exp.var Flapjack.VarKind.local "after")) globalBody459_0 globalBody459_1

def globalBody459_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ca")
  (Flapjack.Exp.const 18446744073709551615#64)) globalBody459_3 globalBody459_1

def globalBody459_7 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "ca", Flapjack.Exp.var Flapjack.VarKind.local "cb"],
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "after", Flapjack.Exp.var Flapjack.VarKind.local "before"]])

def globalBody459_8 : Prog (BitVec 64) :=
.seq globalBody459_6 globalBody459_7

def globalBody459_9 : Prog (BitVec 64) :=
.decCall ("cb") (Flapjack.Shape.one) ("memory_gas_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "before"]) globalBody459_8

def globalBody459_10 : Prog (BitVec 64) :=
.decCall ("ca") (Flapjack.Shape.one) ("memory_gas_cost") ([Flapjack.Exp.var Flapjack.VarKind.local "after"]) globalBody459_9

def globalBody459_11 : Prog (BitVec 64) :=
.seq globalBody459_5 globalBody459_10

def globalBody459_12 : Prog (BitVec 64) :=
.decCall ("after") (Flapjack.Shape.one) ("ceil32") ([Flapjack.Exp.var Flapjack.VarKind.local "endp"]) globalBody459_11

def globalBody459_13 : Prog (BitVec 64) :=
.decCall ("before") (Flapjack.Shape.one) ("ceil32") ([Flapjack.Exp.var Flapjack.VarKind.local "cur"]) globalBody459_12

def globalBody459_14 : Prog (BitVec 64) :=
.dec ("cur") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 32#64])) globalBody459_13

def globalBody459_15 : Prog (BitVec 64) :=
.seq globalBody459_4 globalBody459_14

def globalBody459_16 : Prog (BitVec 64) :=
.decCall ("endp") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody459_15

def globalBody459_17 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "size"]) globalBody459_16

def globalBody459_18 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) globalBody459_17

def globalBody459_19 : Prog (BitVec 64) :=
.seq globalBody459_2 globalBody459_18

def globalBody459_20 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "size"]) globalBody459_19

def globalData459 : Decl (BitVec 64) :=
.function { name := "extend_memory_cost1", inline := false, exported := false, params := [("start", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("size", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody459_20, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput459 := Pancake.PanLang.declToHOL globalData459
end InitECandidate.Proofs.FrontendStages.Declarations
