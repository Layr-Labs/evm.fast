import InitECandidate.Proofs.FrontendStages.Declarations.Data916
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody916_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.var Flapjack.VarKind.local "dep",
    Flapjack.Exp.var Flapjack.VarKind.local "dep_n"]

def globalBody916_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dep" (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def globalBody916_2 : Prog (BitVec 64) :=
.seq globalBody916_0 globalBody916_1

def globalBody916_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dep_cap"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "dep_cap", Flapjack.Exp.const 2#64],
      Flapjack.Exp.const 1024#64])

def globalBody916_4 : Prog (BitVec 64) :=
.seq globalBody916_2 globalBody916_3

def globalBody916_5 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "dep_cap", Flapjack.Exp.const 2#64],
      Flapjack.Exp.const 1024#64]]) globalBody916_4

def globalBody916_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody916_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "dep_cap")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dep_n", Flapjack.Exp.const 192#64])) globalBody916_5 globalBody916_6

def globalBody916_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extract_deposit_data"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dep", Flapjack.Exp.var Flapjack.VarKind.local "dep_n"]]

def globalBody916_9 : Prog (BitVec 64) :=
.seq globalBody916_7 globalBody916_8

def globalBody916_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dep_n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dep_n", Flapjack.Exp.const 192#64])

def globalBody916_11 : Prog (BitVec 64) :=
.seq globalBody916_9 globalBody916_10

def globalBody916_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "sig") (Flapjack.Exp.const 0#64)) globalBody916_11 globalBody916_6

def globalBody916_13 : Prog (BitVec 64) :=
.decCall ("sig") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 728#64]),
  Flapjack.Exp.const 32#64]) globalBody916_12

def globalBody916_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 16#64]))) globalBody916_13 globalBody916_6

def globalBody916_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "isdep") (Flapjack.Exp.const 0#64)) globalBody916_14 globalBody916_6

def globalBody916_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody916_17 : Prog (BitVec 64) :=
.seq globalBody916_15 globalBody916_16

def globalBody916_18 : Prog (BitVec 64) :=
.decCall ("isdep") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 0#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 720#64]),
  Flapjack.Exp.const 20#64]) globalBody916_17

def globalBody916_19 : Prog (BitVec 64) :=
.dec ("log") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "lp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 8#64]])) globalBody916_18

def globalBody916_20 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")) globalBody916_19

def globalBody916_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody916_22 : Prog (BitVec 64) :=
.seq globalBody916_20 globalBody916_21

def globalBody916_23 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody916_22

def globalBody916_24 : Prog (BitVec 64) :=
.dec ("lp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) globalBody916_23

def globalBody916_25 : Prog (BitVec 64) :=
.dec ("nl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) globalBody916_24

def globalBody916_26 : Prog (BitVec 64) :=
.dec ("logs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "rp",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) globalBody916_25

def globalBody916_27 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nr")) globalBody916_26

def globalBody916_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "dep",
    Flapjack.Exp.var Flapjack.VarKind.local "dep_n"]

def globalBody916_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "dep_n")) globalBody916_28 globalBody916_6

def globalBody916_30 : Prog (BitVec 64) :=
.seq globalBody916_27 globalBody916_29

def globalBody916_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 1#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.const 48#64])]

def globalBody916_32 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o1", Flapjack.Exp.const 48#64]))) globalBody916_31 globalBody916_6

def globalBody916_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 2#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.const 48#64])]

def globalBody916_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o2", Flapjack.Exp.const 48#64]))) globalBody916_33 globalBody916_6

def globalBody916_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 3#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.const 48#64])]

def globalBody916_36 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o3", Flapjack.Exp.const 48#64]))) globalBody916_35 globalBody916_6

def globalBody916_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "requests_append"
  [Flapjack.Exp.const 4#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.const 48#64])]

def globalBody916_38 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o4", Flapjack.Exp.const 48#64]))) globalBody916_37 globalBody916_6

def globalBody916_39 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody916_40 : Prog (BitVec 64) :=
.seq globalBody916_38 globalBody916_39

def globalBody916_41 : Prog (BitVec 64) :=
.decCall ("o4") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 712#64])]) globalBody916_40

def globalBody916_42 : Prog (BitVec 64) :=
.seq globalBody916_36 globalBody916_41

def globalBody916_43 : Prog (BitVec 64) :=
.decCall ("o3") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 704#64])]) globalBody916_42

def globalBody916_44 : Prog (BitVec 64) :=
.seq globalBody916_34 globalBody916_43

def globalBody916_45 : Prog (BitVec 64) :=
.decCall ("o2") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 696#64])]) globalBody916_44

def globalBody916_46 : Prog (BitVec 64) :=
.seq globalBody916_32 globalBody916_45

def globalBody916_47 : Prog (BitVec 64) :=
.decCall ("o1") (Flapjack.Shape.one) ("process_checked_system_transaction") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 688#64])]) globalBody916_46

def globalBody916_48 : Prog (BitVec 64) :=
.seq globalBody916_30 globalBody916_47

def globalBody916_49 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody916_48

def globalBody916_50 : Prog (BitVec 64) :=
.dec ("dep_cap") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody916_49

def globalBody916_51 : Prog (BitVec 64) :=
.dec ("dep_n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody916_50

def globalBody916_52 : Prog (BitVec 64) :=
.decCall ("dep") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) globalBody916_51

def globalBody916_53 : Prog (BitVec 64) :=
.dec ("rp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rls", Flapjack.Exp.const 0#64])) globalBody916_52

def globalBody916_54 : Prog (BitVec 64) :=
.dec ("nr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rls", Flapjack.Exp.const 8#64])) globalBody916_53

def globalBody916_55 : Prog (BitVec 64) :=
.dec ("rls") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 624#64]),
      Flapjack.Exp.const 72#64])) globalBody916_54

def globalData916 : Decl (BitVec 64) := .function { name := "process_general_purpose_requests", inline := false, exported := false, params := [], body := globalBody916_55, returnShape := (Flapjack.Shape.one) }
def globalOutput916 := Pancake.PanLang.declToHOL globalData916
end InitECandidate.Proofs.FrontendStages.Declarations
